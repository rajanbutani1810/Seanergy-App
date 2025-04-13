<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Project;
use Validator;
use App\Http\Resources\ProjectResource;
use Illuminate\Http\JsonResponse;
use Auth;
   
class ProjectController extends BaseController
{
    public function index(): JsonResponse
    {
        $projects = Project::where('user_id',Auth::id())->get();
    
        return $this->sendResponse(ProjectResource::collection($projects), 'Projects retrieved successfully.');
    }

    public function store(Request $request): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required|max:1000',
            'description' => 'required|max:2500',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }

        $project = Project::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'user_id' => Auth::id(),
        ]);
   
        return $this->sendResponse(new ProjectResource($project), 'Project created successfully.');
    } 
   
    public function show($id): JsonResponse
    {
        $project = Project::where('id',$id)->where('user_id',Auth::id())->first();
  
        if (is_null($project)) {
            return $this->sendError('Project not found.');
        }
   
        return $this->sendResponse(new ProjectResource($project), 'Project retrieved successfully.');
    }
    
    public function update(Request $request, Project $project): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required|max:1000',
            'description' => 'required|max:2500',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $project->name = $input['title'];
        $project->detail = $input['description'];
        $project->save();
   
        return $this->sendResponse(new ProjectResource($project), 'Project updated successfully.');
    }
   
    public function destroy(Project $project): JsonResponse
    {
        $project = Project::where('id',$project->id)->where('user_id',Auth::id())->first();

        if (is_null($project)) {
            return $this->sendError('Project not found.');
        }

        $project->delete();
   
        return $this->sendResponse([], 'Project deleted successfully.');
    }
}
