<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\API\Admin\ComplainControllerAdmin;
class CaseController extends Controller
{
    function __construct()
    {
        $this->complain = new ComplainControllerAdmin();
    }

    function Page()
    {
        return view('pages.AllCase', ['menu' => 'all-case']);
    }

    function Get()
    {
        $res = $this->complain->allComplainList()->content();
        $res = json_decode($res);
        return $res;
    }

    function Delete(Request $request)
    {
        $res = $this->complain->deleteComplain($request->id)->content();
        return json_decode($res);
    }

    function GetSingle(Request $request)
    {
        $res = $this->complain->caseDetails($request->id)->content();
        return json_decode($res);
    }

    function Update(Request $request){
        $res = $this->complain->updateComplain($request ,$request->id)->content();
        return json_decode($res);
    }

    function GetById(Request $request)
    {
        $res = $this->complain->getComplain($request->id)->content();
        $res = json_decode($res);
        return $res;
    }
    function Filter(Request $request)
    {
        $res = $this->complain->filteredComplainList($request->id)->content();
        $res = json_decode($res);
        return $res;
    }
}