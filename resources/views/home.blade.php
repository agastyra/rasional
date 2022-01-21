@extends('layouts.main')

@section('content')

    <main>

        <div class="jumbotron jumbotron-fluid text-white d-flex">
            <div class="container m-auto">
                <h1 class="rasional">{{ $rasional[0]->nama }}</h1>
                <p class="lead text-white-50 w-50">{{ $rasional[0]->deskripsi }} </p>
                <button type="button" class="btn btn-dark btn-lg py-2 px-5">Jelajahi</button>
            </div>
        </div>

        <h1 class="heading text-center mb-5 text-dark">Layanan</h1>
        <div class="container layanan mb-5">
            <div class="row text-center">

                @foreach ($cards->take(3) as $card)
                    <div class="col-lg-4 layanan-card d-flex flex-column my-3">
                        <div class="lingkaran d-flex m-auto mb-3">
                            <img src="/assets/image/icon/{{ $card->gambar }}" alt="Desain Logo" class="m-auto">
                        </div>
                        <h2 class="mt-3">{{ $card->judul }}</h2>
                        <p class="mt-2 mb-3">{{ $card->body }}</p>
                    </div>
                @endforeach

            </div>
        </div>

        <section id="projek">
            <h1 class="heading text-center text-dark">Projek</h1>
            <div class="d-flex flex-wrap justify-content-center align-items-center">

                @foreach ($projects as $project)
                    <img src="/assets/image/{{ $project->gambar }}" class="img-thumbnail rounded m-3"
                        alt="{{ $project->judul }}" width="300">
                @endforeach

            </div>

            <h2 class="sub-heading text-center mb-5 mt-3 fst-italic"><a href="/projek"
                    class="text-decoration-none text-black-50" style="margin-top: 80px">Lihat Semua &RBarr;</a></h2>
        </section>

        <h1 class="heading text-center text-dark mb-5">Kenapa kami?</h1>
        <div class="container kenapa mb-5">
            <div class="row text-center">

                @foreach ($cards->skip(3) as $card)
                    <div class="col-lg-4 layanan-card d-flex flex-column my-3">
                        <div class="lingkaran d-flex m-auto mb-3">
                            <img src="/assets/image/icon/{{ $card->gambar }}" alt="Desain Logo" class="m-auto">
                        </div>
                        <h2 class="mt-3">{{ $card->judul }}</h2>
                        <p class="mt-2 mb-3">{{ $card->body }}</p>
                    </div>
                @endforeach

            </div>
        </div>

        @include('layouts.partials.button')

    </main>
@endsection
