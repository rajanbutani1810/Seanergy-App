<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

  
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\ProjectController;
use App\Http\Controllers\API\TaskController;
use App\Http\Controllers\API\UserController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::controller(RegisterController::class)->group(function(){
    Route::post('register', 'register');
    Route::post('login', 'login');
});
         
Route::middleware('auth:sanctum')->group( function () {
    Route::resource('projects', ProjectController::class);
    Route::resource('tasks', TaskController::class);

    Route::get('/user/projects-tasks', [UserController::class, 'getUserProjectsTasks']);
});

