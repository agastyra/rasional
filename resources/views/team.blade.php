@extends('layouts.main')

@section('content')
    <div class="container">

        @include('layouts.partials.title', ['tim' => 'Tim'])

        <div class="container">
            <div class="row justify-content-center">
                @foreach ($rasional->skip(1) as $tim)
                    <!-- Single Advisor-->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single_advisor_profile wow fadeInUp" data-wow-delay="0.3s"
                            style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                            <!-- Team Thumb-->
                            <div class="advisor_thumb"><img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">
                                <!-- Social Info-->
                                <div class="social-info"><a href="https://www.instagram.com/{{ $tim->instagram }}"
                                        target="_blank" class="text-decoration-none">{{ $tim->instagram }}</a>
                                </div>
                            </div>
                            <!-- Team Details-->
                            <div class="single_advisor_details_info">
                                <h6>{{ $tim->nama }}</h6>
                                <p class="designation">{!! $tim->deskripsi !!}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        @include('layouts.partials.button')

    </div>
@endsection
