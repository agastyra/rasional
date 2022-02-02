@extends('layouts.main')

@section('content')
    <div class="container">

        @include('layouts.partials.title', ['tim' => 'Tim'])

        <h1 class="mb-3">Visi</h1>
        <p class="fs-5 mb-5">{{ $rasional[0]->visi }}</p>

        <h1 class="mb-3">Misi</h1>
        <ul class="fs-5 mb-5">
            @foreach (explode('.', $rasional[0]->misi, 3) as $misi)
                <li class="mb-3 text-dark">{{ $misi }}</li>
            @endforeach
        </ul>

        @include('layouts.partials.button')

    </div>
@endsection
