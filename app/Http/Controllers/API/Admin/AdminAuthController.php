<?php

namespace App\Http\Controllers\API\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AdminAuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:191',
            'email' => 'required|unique:users,email',
            'password' => 'required|min:8',
            'nid' => 'required|min:10|max:13',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validation_errors' => $validator->messages(),
            ]);
        } else {
            $user = User::create([
                'name' => $request->input('name'),
                'nid' => $request->input('nid'),
                'email' => $request->input('email'),
                'password' => Hash::make($request->input('password')),
                'role_as' => '2',
            ]);

            $token = $user->createToken($user->phone . '_Token')->plainTextToken;

            return response()->json([
                'status' => 200,
                'name' => $user->name,
                'phone' => $user->phone,
                'token' => $token,
                'message' => 'Registerd as Admin Successfully!!',
            ]);
        }
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'validation_errors' => $validator->messages(),
            ]);
        } else {
            $user = User::where('email', $request->email)->first();

            //email check
            if(!$user){
                return response()->json([
                    'status' => 403,
                    'message' => 'The email number you entered is not registared! Please Registar first',
                ]);
              }
            //email check

            if (!$user || !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'status' => 401,
                    'message' => 'Invalid Credentials',
                ]);
            } else {

                if($user->role_as == 2) //2= Admin
                 {
                     $role = 'admin';
                    $token = $user->createToken($user->email . '_AdminToken', ['server:admin'])->plainTextToken;
                }
				else {
                    $role = '';
                    $token = $user->createToken($user->email . '_Token', [''])->plainTextToken;
                }

                return response()->json([
                    'status' => 200,
                    'username' => $user->name,
                    'token' => $token,
                    'role' => $role,
                    'message' => 'Logged In as Admin!!',
                ]);
            }
        }
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response()->json([
            'status' => 200,
            'message' => 'Logged Out Successfully!!',
        ]);
    }
}
