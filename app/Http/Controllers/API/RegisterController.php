<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Http\JsonResponse;
   
class RegisterController extends BaseController
{
   // Register api
   
    public function register(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'photo' => 'required|mimes:jpg,png,jpeg|max:2048',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $photoUrl = "";
        if ($request->hasFile('photo')) {
            $namePrefix = substr($request->name, 0, 3);
            $todayDate = date('d');
            $todayMonth = date('m');
            $photoName = $namePrefix . '_' . $todayDate . '_' . $todayMonth . '.' . $request->file('photo')->getClientOriginalExtension();
            $photoPath = $request->file('photo')->storeAs('img', $photoName, 'public');
            $photoUrl = url('storage/img/' . $photoName);
        }


        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $input['photo'] =  $photoUrl;
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->plainTextToken;
        $success['name'] =  $user->name;
        $success['email'] =  $user->email;
        $success['photo'] =  $user->photo;

   
        return $this->sendResponse($success, 'User register successfully.');
    }
   
    // Login api
    public function login(Request $request): JsonResponse
    {
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')->plainTextToken; 
            $success['name'] =  $user->name;
   
            return $this->sendResponse($success, 'User login successfully.');
        } 
        else{ 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }
}
