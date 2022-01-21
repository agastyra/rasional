<?php

use App\Http\Controllers\AboutController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ContactController;

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

Route::get('/', [HomeController::class, "index"]);

Route::get('/kontak', [ContactController::class, "index"]);
Route::post('/kontak', [ContactController::class, "store"]);

Route::get('/tentang', [AboutController::class, "index"]);
Route::get('/tentang/tim', [AboutController::class, "show"]);
