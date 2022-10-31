<?php

namespace App\Http\Controllers;

use App\Http\Controllers\API\Admin\ComplainControllerAdmin;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    function __construct()
    {
        $this->complain = new ComplainControllerAdmin();
    }

    function Page(){

        return view('pages.Dashboard', ['menu' => 'dashboard']);
    }

    function Chart(){
        $res = $this->complain->chart()->content();
        $res = json_decode($res);
        return $res;
    }
}
