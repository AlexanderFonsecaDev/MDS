<?php

namespace App\Http\Controllers;

use App\Exports\UsersExport;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('home',[
            'users' => User::all()
        ]);
    }

    public function download(){
        $userExport = new UsersExport;
        return $userExport->download('users.csv');
    }


}
