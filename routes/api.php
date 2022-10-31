<?php

use App\Http\Controllers\API\Admin\AdminAuthController;
use App\Http\Controllers\API\Admin\ComplainControllerAdmin;
use App\Http\Controllers\API\User\AuthController;
use App\Http\Controllers\API\User\CaseSummeryController;
use App\Http\Controllers\API\User\ComplainController;
use App\Http\Controllers\API\User\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

//__User Auth Route__//
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

//__Admin Auth Route__//
Route::post('/admin_register', [AdminAuthController::class, 'register']);
Route::post('/admin_login', [AdminAuthController::class, 'login']);

Route::middleware(['auth:sanctum', 'isAPIUser'])->group(function () {

    Route::get('/checkingAuthenticated', function () {
        return response()->json(['message' => 'You are In', 'status' => 200], 200);
    });

    Route::get('/profile', [UserController::class, 'profileinfo']);
    Route::get('/edit_profile/{id}', [UserController::class, 'editprofile']);
    Route::post('/update_profile/{id}', [UserController::class, 'updateprofile']);

    Route::post('/create_complain', [ComplainController::class, 'createcomplain']);
    Route::get('/search_complain/{query}', [ComplainController::class, 'searchComplain']);

    Route::get('/pending_case', [CaseSummeryController::class, 'pendingCase']);
    Route::get('/previous_case', [CaseSummeryController::class, 'previousCase']);

    Route::post('/logout', [AuthController::class, 'logout']);
});

Route::middleware(['auth:sanctum', 'isAPIAdmin'])->group(function () {

    Route::get('/checkingAuthenticated', function () {
        return response()->json(['message' => 'You are In', 'status' => 200], 200);
    });

    Route::get('/all_complain', [ComplainControllerAdmin::class, 'allComplainList']);
    Route::get('/case_details/{id}', [ComplainControllerAdmin::class, 'caseDetails']);
    Route::get('/all_pending_complain', [ComplainControllerAdmin::class, 'allPendingComplain']);
    Route::get('/all_compleated_complain', [ComplainControllerAdmin::class, 'allCompleatedComplain']);
    Route::get('/search_complain/{query}', [ComplainControllerAdmin::class, 'searchComplain']);
    Route::get('/edit_complain/{id}', [ComplainControllerAdmin::class, 'editComplain']);
    Route::post('/update_complain/{id}', [ComplainControllerAdmin::class, 'updateComplain']);
    Route::delete('/delete_complain/{id}', [ComplainControllerAdmin::class, 'deleteComplain']);
    Route::get('/case_chart', [ComplainControllerAdmin::class, 'caseChart']);

    Route::get('/chart', [ComplainControllerAdmin::class, 'chart']);

    Route::post('/admin_logout', [AdminAuthController::class, 'logout']);
});

//__Route for Admin__//
Route::get('/all_complain', [ComplainControllerAdmin::class, 'allComplainList']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

