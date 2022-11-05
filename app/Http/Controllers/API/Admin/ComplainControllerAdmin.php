<?php

namespace App\Http\Controllers\API\Admin;

use Carbon\Carbon;
use App\Models\Complain;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class ComplainControllerAdmin extends Controller
{
    public function allComplainList()
    {
        $complains = Complain::orderBy('id', 'DESC')->get();
        if (count($complains)) {
            return response()->json([
                'status' => 200,
                'complains' => $complains,
            ]);
        } else {
            return response()->json([
                'status' => 421,
                'message' => 'there is no records',
            ]);
        }
    }

    public function allPendingComplain()
    {
        $pendingCases = Complain::where('case_status', '0')->orderBy('id', 'DESC')->get();
        if (count($pendingCases)) {
            return response()->json([
                'status' => 200,
                'pendingCases' => $pendingCases,
            ]);
        } else {
            return response()->json([
                'status' => 421,
                'message' => 'there is no Pending Cases',
            ]);
        }
    }

    public function allCompleatedComplain()
    {
        $CompleatedCases = Complain::where('case_status', '1')->orderBy('id', 'DESC')->get();
        if (count($CompleatedCases)) {
            return response()->json([
                'status' => 200,
                'CompleatedCases' => $CompleatedCases,
            ]);
        } else {
            return response()->json([
                'status' => 421,
                'message' => 'there is no Completed Cases',
            ]);
        }
    }

    public function searchComplain($query)
    {
        // $searchResult = Complain::where('name', 'LIKE', '%'.$query.'%')->get();
        $searchResult = Complain::where('phone', 'LIKE', $query)
            ->orWhere('nid', 'LIKE', $query)->orWhere('case_no', 'LIKE', $query)
            ->orderBy('id', 'DESC')->get();
        if (count($searchResult)) {
            return response()->json([
                'status' => 200,
                'searchResult' => $searchResult,
            ]);
        } else {
            return response()->json([
                'status' => 421,
                'message' => 'No Record found',
            ]);
        }
    }

    public function editComplain($id)
    {
        if (auth('sanctum')->check()) {
            $complain = Complain::find($id);
            if ($complain) {
                return response()->json([
                    'status' => 200,
                    'complain' => $complain,
                ]);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => 'There is no record with this id',
                ]);
            }
        } else {
            return response()->json([
                'status' => 401,
                'message' => 'Please Logged in first',
            ]);
        } 
    }

    public function updateComplain(Request $request, $id)
    {
  /*      if (auth('sanctum')->check()) {*/
            $complain = Complain::find($id);
            if ($complain) {
                $complain->case_status = $request->input('case_status');
                $complain->hearing_date = $request->input('hearing_date');
                $complain->save();
                return response()->json([
                    'status' => 200,
                    'message' => 'information Updated',
                ]);
            }
  /*      } else {
            return response()->json([
                'status' => 401,
                'message' => 'Please Logged in first',
            ]);
        }*/
    }


    public function caseDetails($id)
    {
//        if (auth('sanctum')->check()) {
            $caseDetails = Complain::find($id);
            if ($caseDetails) {
                return response()->json([
                    'status' => 200,
                    'caseDetails' => $caseDetails,
                ]);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => 'There is no record with this id',
                ]);
            }
//        } else {
//            return response()->json([
//                'status' => 401,
//                'message' => 'Please Logged in first',
//            ]);
//        }
    }

    public function deleteComplain($id)
    {
        $complain = Complain::find($id);
        $product_photo_path = 'uploads/product' . $complain->product_photo;

        if (File::exists($product_photo_path)) {
            File::delete($product_photo_path);
        }
        $invoice_photo_path = 'uploads/invoice' . $complain->invoice_photo;
        if (File::exists($invoice_photo_path)) {
            File::delete($invoice_photo_path);
        }
        if ($complain) {

            $complain->delete();
            return response()->json([
                'status' => 200,
                'message' => 'Delated Successfully'
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'no record associated with this id'
            ]);
        }
    }

    public function caseChart()
    {
       
        $start = 0;

        $complain = Complain::where('created_at', '>=', $start)
       ->groupBy(DB::raw('DATE(complains.created_at)'))
        ->get([DB::raw('COUNT(*) as count'),
        DB::raw('DATE(complains.created_at) as date')]);

        $labels = $complain->keys();
        $data = $complain->values();

        if (count($complain)) {
            return response()->json([
                'status' => 200,
                // 'complain' => $complain,
                'labels' => $labels,
                'data' => $data,
              
            ]);
        } else {
            return response()->json([
                'status' => 403,
                'message' => 'no data found',
            ]);
        }
    }


    public function chart(){
        $data = Complain::select('id', 'created_at')->get()->groupBy(function($data) {
            return Carbon::parse($data->created_at)->format('D-M-Y');
         
        });

        $dates = [];
        $caseCount = [];
        foreach($data as $date => $values){
              $dates[] = $date;
              $caseCount[] = count($values);
        }
        return response()->json([
            'status' => 200,
            // 'complain' => $complain,
            'dates' => $dates,
            'caseCount' => $caseCount,
          
        ]);
    }

    public function getComplain($id)
    {
        $complain = Complain::find($id);
        if ($complain) {
            return response()->json([
                'status' => 200,
                'complains' => $complain,
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'no record associated with this id'
            ]);
        }
    }
    
    public function filteredComplainList($id)
    {
        $complains = Complain::where('case_status', $id)->get();
        if (count($complains)) {
            return response()->json([
                'status' => 200,
                'complains' => $complains,
            ]);
        } else {
            return response()->json([
                'status' => 421,
                'message' => 'there is no records',
            ]);
        }
    }

}


