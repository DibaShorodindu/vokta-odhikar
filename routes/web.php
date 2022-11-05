<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\CaseController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/login', [LoginController::class, "Page"]);
Route::post('/login', [LoginController::class, "Login"]);
Route::get('/logout', [LoginController::class, "logout"]);
Route::get('/', [HomeController::class, "Page"])->middleware('auth.check');
Route::get('/chart', [HomeController::class, "Chart"]);
Route::get('/all-case', [CaseController::class, "Page"])->middleware('auth.check');
Route::get('/get-all', [CaseController::class, "Get"]);
Route::get('/delete-case/{id}', [CaseController::class, "Delete"]);
Route::get('/details-case/{id}', [CaseController::class, "GetSingle"]);
Route::post('/update-case/{id}', [CaseController::class, "Update"]);

Route::get('/show-case/{id}', [CaseController::class, "GetById"]);
Route::get('/filter-case/{id}', [CaseController::class, "Filter"]);

