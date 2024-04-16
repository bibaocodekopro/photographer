<?php

use App\Http\Controllers\adminController;
use App\Http\Controllers\homeController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [homeController::class ,'index']);

Route::get('admin/dashboard', [adminController::class ,'index']);

Route::get('admin/view_products', [adminController::class ,'view_product']);
Route::get('admin/add_product', [adminController::class ,'view_add_product']);


Route::get('admin/view_categories', [adminController::class ,'view_category']);
Route::get('admin/view_add_category', [adminController::class ,'view_add_category']);
Route::post('admin/add_category', [adminController::class ,'add_category']);
Route::get('admin/delete_category/{id}', [adminController::class ,'delete_category']);
