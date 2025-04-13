<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Validator;
use Auth;

   
class UserController extends BaseController
{
   
    public function getUserProjectsTasks()
    {
        $userProjectsWithTasks = User::where('id', Auth::id())
            ->with('projects.tasks')
            ->get();
    
        return response()->json([
            'success' => true,
            'data' => $userProjectsWithTasks
        ], 200);
    }
    
}    