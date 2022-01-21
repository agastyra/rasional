<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {

        return view('about', [
            'judul' => 'Rasional | Tentang',
            'heading' => 'Tentang',
            'subHeading' => 'Visi & Misi',
            'rasional' => User::all()
        ]);
    }

    public function show()
    {
        return view('team', [
            'judul' => 'Rasional | Tim',
            'heading' => 'Tentang',
            'subHeading' => 'Visi & Misi',
            'rasional' => User::all()
        ]);
    }
}
