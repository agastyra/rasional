<h1 class="heading my-5">{{ $heading }}</h1>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">
            <h2 class="text-center sub-heading mb-4">
                <a href="{{ $judul === 'Rasional | Tim' ? '/tentang' : '#' }}"
                    class="text-decoration-none {{ $judul === 'Rasional | Tentang' || $judul === 'Rasional | Kontak' ? 'text-dark' : 'text-black-50' }}">{{ $subHeading }}</a>
            </h2>
        </div>
        @if (isset($tim))
            <div class="col-6">
                <h2 class="text-center sub-heading mb-4">
                    <a href="/tentang/tim"
                        class="text-decoration-none {{ $judul === 'Rasional | Tim' ? 'text-dark' : 'text-black-50' }}">Tim</a>
                </h2>
            </div>
        @endif
    </div>
</div>
<hr class="mb-5">
