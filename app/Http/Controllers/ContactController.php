<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\User;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact', [
            'judul' => 'Rasional | Kontak',
            'heading' => 'Kontak',
            'subHeading' => 'Silahkan isi data berikut',
            'rasional' => User::all()
        ]);
    }

    public function store(Request $request)
    {

        $validated = $request->validate([
            'nama' => 'required|max:255|min:3',
            'email' => 'required|email:rfc,dns',
            'layanan' => 'required',
            'pesan' => 'required|min:4'
        ]);

        Contact::create($validated);

        return redirect('/kontak')->with('success', 'Terimakasih telah menghubungi kami. Pesan Anda akan kami jawab melalui email yang Anda kirimkan.');
    }
}
