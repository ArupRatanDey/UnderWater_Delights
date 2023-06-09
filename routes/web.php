<?php

use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\LoginController;
use Illuminate\Support\Facades\Route;



Route::get('/', [\App\Http\Controllers\Frontend\HomeController::class, 'index'])->name('home');

Route::get('login', [LoginController::class, 'login'])->name('login');
Route::post('login', [LoginController::class, 'dologin']);

Route::get('register',[App\Http\Controllers\Frontend\UserController::class,'register'])->name('register');
Route::post('register',[App\Http\Controllers\Frontend\UserController::class,'doRegister']);

Route::middleware('auth')->group(function () {
    //profile
    Route::get('profile', [\App\Http\Controllers\Frontend\UserController::class, 'profile'])->name('user.profile');
    Route::post('profile', [\App\Http\Controllers\Frontend\UserController::class, 'updateProfile']);

    // Add To Cart
    Route::get('add/cart/{id}', [\App\Http\Controllers\Frontend\CartController::class, 'cart'])->name('add.cart');
    Route::get('cart', [\App\Http\Controllers\Frontend\CartController::class, 'show'])->name('add.cart.show');


    Route::get('order/{id}', [\App\Http\Controllers\Frontend\CartController::class, 'orderShow'])->name('order.show');


    //checkout url
    Route::get('checkout',[\App\Http\Controllers\Frontend\CartController::class, 'checkout'])->name('checkout');
    Route::post('order',[\App\Http\Controllers\Frontend\CartController::class, 'order'])->name('order');


    Route::get('logout', [\App\Http\Controllers\Backend\LoginController::class, 'logout'])->name('logout');
    
    
    Route::prefix('dashboard')->group(function () {
        Route::middleware('IsAdmin')->group(function () {
            Route::get('/', [DashboardController::class, 'index'])->name('admin.dashboard');
            Route::get('profile', [\App\Http\Controllers\Backend\LoginController::class, 'profile'])->name('profile');
            Route::get('/products', [\App\Http\Controllers\Backend\ProductController::class, 'index'])->name('admin.product');
            Route::get('/products/create', [\App\Http\Controllers\Backend\ProductController::class, 'create'])->name('admin.product.create');
            Route::post('/products/create', [\App\Http\Controllers\Backend\ProductController::class, 'store']);
            Route::get('products/edit/{id}', [\App\Http\Controllers\Backend\ProductController::class, 'edit'])->name('admin.product.edit');
            Route::post('products/edit/{id}', [\App\Http\Controllers\Backend\ProductController::class, 'update']);
            Route::get('products/delete/{id}', [\App\Http\Controllers\Backend\ProductController::class, 'delete'])->name('admin.product.delete');

            Route::get('users', [\App\Http\Controllers\Backend\UserController::class, 'index'])->name('admin.user');
            Route::get('users/create', [\App\Http\Controllers\Backend\UserController::class, 'create'])->name('admin.user.create');
            Route::post('users/create', [\App\Http\Controllers\Backend\UserController::class, 'store']);
            Route::get('users/edit/{id}', [\App\Http\Controllers\Backend\UserController::class, 'edit'])->name('admin.user.edit');
            Route::post('users/edit/{id}', [\App\Http\Controllers\Backend\UserController::class, 'update'])->name('admin.user.update');
            Route::get('users/delete/{id}', [\App\Http\Controllers\Backend\UserController::class, 'delete'])->name('admin.user.delete');




            // ORDER MANAGEMENT FROM ADMIN PANEL.

            Route::get('orders', [\App\Http\Controllers\Backend\OrderController::class, 'index'])->name('admin.order');
            Route::get('orders/{id}', [\App\Http\Controllers\Backend\OrderController::class, 'show'])->name('admin.order.show');
            Route::post('orders/{id}', [\App\Http\Controllers\Backend\OrderController::class, 'update']);
  
        });
    });
});
