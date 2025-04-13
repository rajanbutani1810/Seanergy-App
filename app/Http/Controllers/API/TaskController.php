<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Task;
use App\Models\Project;
use Validator;
use App\Http\Resources\TaskResource;
use Illuminate\Http\JsonResponse;
use Auth;

   
class TaskController extends BaseController
{
    public function index(): JsonResponse
    {
        $tasks = Task::where('user_id',Auth::id())->get();

        return $this->sendResponse(TaskResource::collection($tasks), 'Tasks retrieved successfully.');
    }


    public function store(Request $request): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required|max:1000',
            'description' => 'required|max:2500',
            'project_id' => 'required',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $project = Project::where('id',$request->project_id)->where('user_id',Auth::id())->first();
  
        if (is_null($project)) {
            return $this->sendError('Project not found.');
        }

        $tasks = Task::create([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
            'user_id' => Auth::id(),
            'project_id' => $request->project_id,
        ]);
   
        return $this->sendResponse(new TaskResource($tasks), 'Task created successfully.');
    } 
   

    public function show($id): JsonResponse
    {
        $task = Task::where('id',$id)->where('user_id',Auth::id())->first();
  
        if (is_null($task)) {
            return $this->sendError('Task not found.');
        }
   
        return $this->sendResponse(new TaskResource($task), 'Task retrieved successfully.');
    }
    
 
    public function update(Request $request, Task $task): JsonResponse
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'title' => 'required|max:1000',
            'description' => 'required|max:2500',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $task->title = $input['title'];
        $task->description = $input['description'];
        $task->save();
   
        return $this->sendResponse(new TaskResource($task), 'Task updated successfully.');
    }
   
   
    public function destroy(Task $task): JsonResponse
    {

        $task = Task::where('id',$task->id)->where('user_id',Auth::id())->first();
  
        if (is_null($task)) {
            return $this->sendError('Task not found.');
        }

        $task->delete();
   
        return $this->sendResponse([], 'Task deleted successfully.');
    }
}
