<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\API\User\AuthController;
use App\Http\Controllers\API\Admin\AdminAuthController;
class LoginController extends Controller
{

    function __construct()
    {
        $this->auth = new AdminAuthController();
    }

    function Page(){
        return view('pages.Login');
    }

    function Login(Request $request){
        $res =  $this->auth->login($request)->content();
        $res = json_decode($res);
        if($res->status === 200){
            $request->session()->put('__token', $res->token);
            return redirect('/')->with('message', $res->message);
        }
        else{
            return redirect('/login')->with('message', $res->message);
        }
    }

    function Logout(Request $request){
        $request->session()->flush();
        return redirect('/login');
    }
}
