<?php

use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\ProductController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('products')->group(function () {
    Route::get('', [ProductController::class, 'all']);
    Route::get('{product}', [ProductController::class, 'find']);
});

Route::prefix('categories')->group(function () {
    Route::get('', [CategoryController::class, 'all']);
    Route::get('{category}', [CategoryController::class, 'find']);
});
