<nav class="navbar navbar-expand-md navbar-dark sticky-top bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/">Rasional</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav nav mb-2 mb-md-0 justify-content-end">
                <li class="nav-item">
                    <a class="nav-link {{ $judul === 'Rasional' ? 'active' : '' }}" aria-current="page"
                        href="/">Beranda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ $judul === 'Rasional | Projek' ? 'active' : '' }}" href="/projek">Projek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ $judul === 'Rasional | Kontak' ? 'active' : '' }}" href="/kontak">Kontak</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ $judul === 'Rasional | Tentang' || $judul === 'Rasional | Tim' ? 'active' : '' }}"
                        href="/tentang">Tentang</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
