<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function test()
    {
        $user=  Auth::user();
        //echo $user->email;

        $arr = ['l1'=>'1' , 'l2'=>'0'];

        //return view('home',['user' => $user->name]);
        $results = DB::select('select * from Status where username = :id LIMIT 0,1', ['id' => $user->email]);
        $results[0]->light1;
        return view('home',
            ['l1'=>$results[0]->light1,
                'l2'=>$results[0]->light2,
                'l3'=>$results[0]->light3,
                'l4'=>$results[0]->light4
            ]
            );
    }
}
