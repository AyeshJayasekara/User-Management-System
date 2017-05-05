<?php

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
use Illuminate\Support\Facades\Input;
Route::get('/', function () {
    return view('welcome');
});

//Route::get('userlogin.php', function () {
  //  return view('login');
//});

Route::match(array('GET', 'POST'), 'userlogin.php', function(Request $request)
{
    echo Input::Get('password');
    echo "!";
    echo "asd";
    //return view('login');
    //return 'Hello World';
});
Route::get('/users', function () {
    return view('users');
});
