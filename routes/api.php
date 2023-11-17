<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
# Mengimport Controller News(berita)
use App\Http\Controllers\NewsController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

# Route News
# Method Get
Route::get('/news/{id}', [NewsController::class, 'show']);
Route::get('/news/search/{title}', [NewsController::class, 'search']);
Route::get('/news/category/{category}', [NewsController::class, 'category']);

# Middleware Sanctum Authentication
Route::middleware('auth:sanctum')->group(function () {
    # Method GET, route /News(berita)
    Route::get('/news', [NewsController::class, 'index']);
    # Create News(berita)
    Route::post('/news', [NewsController::class, 'store']);
    # Update News(berita)
    Route::put('/news/{id}', [NewsController::class, 'update']);
    # Delete News(berita)
    Route::delete('/news/{id}', [NewsController::class, 'destroy']);
});

# Register and Login
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

