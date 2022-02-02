@extends('layouts.main')

@section('content')
    <div class="container">

        @include('layouts.partials.title')

        @if (session()->has('success'))
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-primary d-flex align-items-center alert-dismissible" role="alert">
                        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:">
                            <use xlink:href="#info-fill" />
                        </svg>
                        <div>
                            {{ session('success') }}
                        </div>
                        <button type="button" class="btn-close ms-auto" data-bs-dismiss="alert" aria-label="Tutup"></button>
                    </div>
                </div>
            </div>
        @endif

        <div class="row">
            <div class="col-md-6 mr-auto">
                <h2>Hubungi Kami</h2>
                <p class="mb-5">{{ $rasional[0]->deskripsi }}</p>

                <ul class="list-unstyled pl-md-5 mb-5">
                    <li class="d-flex text-black mb-2">
                        <i class="bi bi-pin-map-fill"> </i> {{ $rasional[0]->alamat }}
                    </li>
                    <li class="d-flex text-black mb-2"><span class="mr-3"><i class="bi bi-telephone-fill"> </i>
                            {{ $rasional[0]->telp }}</li>
                    <li class="d-flex text-black"><span class="mr-3"><i class="bi bi-envelope-fill"> </i>
                            {{ $rasional[0]->email }} </li>
                </ul>
            </div>

            <div class="col-md-6">
                <form class="mb-5" method="post" id="contactForm" name="contactForm" action="/kontak">

                    @csrf

                    <div class="row mb-3">
                        <div class="col-md-12 form-group">
                            <label for="nama" class="col-form-label fs-5 fw-bold mb-1">Nama Organisasi</label>
                            <input type="text"
                                class="form-control form-control-lg @error('nama')
                                is-invalid
                            @enderror"
                                name="nama" id="nama" value="{{ Request::old('nama') }}" required>
                            @error('nama')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12 form-group">
                            <label for="email" class="col-form-label fs-5 fw-bold mb-1">Alamat Email</label>
                            <input type="email"
                                class="form-control form-control-lg @error('email')
                                is-invalid
                            @enderror"
                                name="email" id="email" value="{{ Request::old('email') }}" required>
                            @error('email')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12 form-group">
                            <p class="col-form-label fs-5 fw-bold mb-1">Layanan</p>

                            <input type="radio" class="btn-check" name="layanan" id="desain-logo" value="Desain Logo"
                                checked>
                            <label class="btn btn-outline-secondary py-2 px-3 my-2" for="desain-logo">Desain Logo</label>

                            <input type="radio" class="btn-check" name="layanan" id="desain-kaos" value="Desain Kaos">
                            <label class="btn btn-outline-secondary py-2 px-3 mx-2 my-2" for="desain-kaos">Desain
                                Kaos</label>

                            <input type="radio" class="btn-check" name="layanan" id="desain-produk"
                                value="Desain Produk">
                            <label class="btn btn-outline-secondary py-2 px-3 my-2" for="desain-produk">Desain
                                Produk</label>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12 form-group">
                            <label for="pesan" class="col-form-label fs-5 fw-bold mb-1">Pesan</label>
                            <textarea
                                class="form-control form-control-lg @error('pesan')
                                is-invalid
                            @enderror"
                                name="pesan" id="pesan" cols="30" rows="7" required>{{ Request::old('pesan') }}</textarea>
                            @error('pesan')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-dark btn-lg py-2 px-5">Kirim</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
            <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path
                    d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
            </symbol>
            <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                <path
                    d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
            </symbol>
            <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                <path
                    d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
            </symbol>
        </svg>

    </div>
@endsection
