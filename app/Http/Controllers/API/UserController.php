<?php
namespace App\Http\Controllers\API;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use App\User; 
use Illuminate\Support\Facades\Auth; 
use Validator;

class UserController extends Controller 
{
public $successStatus = 200;
/** 
     * login api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user(); 
            //$success['name'] = $user->name;
            $success['access_token'] =  $user->createToken('MyApp')-> accessToken; 
            return response()->json(['success' => $success]);
            
        } 
        else{ 
            return response()->json(['error'=>'Invalid Username,Password.please check.'], 401); 
        } 
    }
/** 
     * Register api 
     * 
     * @return \Illuminate\Http\Response 
     */ 
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'mobile' => 'required',
            'email' => 'required|email', 
            'password' => 'required', 
            'c_password' => 'required|same:password', 
        ]);
        if ($validator->fails()) { 
                    return response()->json(['error'=>$validator->errors()], 401);            
                }
                $input = $request->all(); 
                $input['password'] = bcrypt($input['password']); 
                $user = User::create($input); 
               
                $success['name'] =  $user->name;
                $success['Authorization'] =  $user->createToken('MyApp')-> accessToken; 
                return response()->json(['headers' => $success],$this-> successStatus);
               
            }
        /** 
             * details api 
             * 
             * @return \Illuminate\Http\Response 
             */ 
        public function details() 
        { 
            $user = Auth::user(); 
            return response()->json(['success' => $user], $this-> successStatus); 
        } 
        public function logout(Request $request) {
            if (Auth::check()) {
                Auth::user()->AuthAcessToken()->delete();
                    return response()->json(['message'=>'logged out']);
                }   

            
        }
}