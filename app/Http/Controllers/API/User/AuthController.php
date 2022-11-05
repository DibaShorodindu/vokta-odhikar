<?php

namespace App\Http\Controllers\API\User;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    //__User Register method__//
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:191',
            'phone' => 'required|min:11|max:11|unique:users,phone',
            'password' => 'required|min:8',
            'nid' => 'required|min:10|max:13|unique:users,nid',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validation_errors' => $validator->messages(),
            ]);
        } else {
            $user = User::create([
                'name' => $request->input('name'),
                'phone' => $request->input('phone'),
                'nid' => $request->input('nid'),
                'email' => $request->input('email'),
                'password' => Hash::make($request->input('password')),
                'role_as' => '1',
            ]);

            $token = $user->createToken($user->phone . '_Token')->plainTextToken;

            return response()->json([
                'status' => 200,
                'name' => $user->name,
                'phone' => $user->phone,
                'token' => $token,
                'message' => 'Registerd Successfully!!',
            ]);
        }
    }

    //__User Login method__//
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'validation_errors' => $validator->messages(),
            ]);
        } else {
            $user = User::where('phone', $request->phone)->first();

            //phone number matching
              if(!$user){
                return response()->json([
                    'status' => 403,
                    'message' => 'The phone number you entered is not registared! Please Registar first',
                ]);
              }
            //phone number matching

            if (!$user || !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'status' => 401,
                    'message' => 'Invalid Credentials',
                ]);
            } else {

                if($user->role_as == 1) //1= User
                 {
                     $role = 'user';
                    $token = $user->createToken($user->phone . '_userToken', ['server:user'])->plainTextToken;
                } else {
                    $role = '';
                    $token = $user->createToken($user->phone . '_Token', [''])->plainTextToken;
                }

                return response()->json([
                    'status' => 200,
                    'username' => $user->name,
                    'phone' => $user->phone,
                    'token' => $token,
                    'role' => $role,
                    'message' => 'Logged In Successfully!!',
                ]);
            }
        }
    }

    //__User Logout method__//
    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            'status' => 200,
            'message' => 'Logged Out Successfully!!',
        ]);
    }
}
