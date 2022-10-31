<?php

namespace App\Http\Controllers\API\User;

use App\Http\Controllers\Controller;
use App\Models\Complain;
use Illuminate\Http\Request;

class CaseSummeryController extends Controller
{
    public function pendingCase()
    {
        if (auth('sanctum')->check()) {
            $LoggedinUser_id = auth('sanctum')->user()->id;
            $pending_cases = Complain::where('user_id', $LoggedinUser_id)->where('case_status', '0')->orderBy('id', 'DESC')->get();
            if(count($pending_cases)){
                return response()->json([
                    'status' => 200,
                    'pending_cases' => $pending_cases,
                ]);
            }
            else {
                return response()->json([
                    'status' => 421,
                    'message' => 'there is no data',
                ]);
            }
        } else {
            return response()->json([
                'status' => 401,
                'message' => 'Please Logged in first',
            ]);
        }
    }

    public function previousCase()
    {
        if (auth('sanctum')->check()) {
            $LoggedinUser_id = auth('sanctum')->user()->id;
            $previous_cases = Complain::where('user_id', $LoggedinUser_id)->where('case_status', '1')->orderBy('id', 'DESC')->get();
           if(count($previous_cases)){
            return response()->json([
                'status' => 200,
                'previous_cases' => $previous_cases,
            ]);
           }
           else {
            return response()->json([
                'status' => 421,
                'message' => 'there is no data',
            ]);
           }
        } else {
            return response()->json([
                'status' => 401,
                'message' => 'Please Logged in first',
            ]);
        }
    }
}
