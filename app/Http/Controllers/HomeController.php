<?php

namespace App\Http\Controllers;

use App\Models\Card;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('home', [
            'judul' => 'Rasional',
            'rasional' => User::all(),
            'cards' => Card::all(),
            'projects' => Project::skip(1)->take(4)->get()
        ]);
    }
}
