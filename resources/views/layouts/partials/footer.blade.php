<div class="footer-r">
    <div class="container">
        <footer class="row row-cols-5 py-5 border-top">
            <div class="col">
                <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
                    <svg class="bi me-2" width="40" height="32">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                </a>
            </div>

            <div class="col">

            </div>

            <div class="col">
                <h5 class="sub-heading text-end">Layanan</h5>
                <ul class="f-text list-unstyled">
                    <li>Design Logo</li>
                    <li>Design Kaos</li>
                    <li>Design Produk</li>
                </ul>
            </div>

            <div class="col">
                <h5 class="sub-heading text-end">Tautan terkait</h5>
                <ul class="f-text list-unstyled flex-column">
                    <li><a href="/" {{ $judul === 'Rasional' ? 'hidden' : '' }}>Beranda</a></li>
                    <li><a href="/projek" {{ $judul === 'Rasional | Projek' ? 'hidden' : '' }}>Projek</a></li>
                    <li><a href="/kontak" {{ $judul === 'Rasional | Kontak' ? 'hidden' : '' }}>Kontak</a></li>
                    <li><a href="/tentang"
                            {{ $judul === 'Rasional | Tentang' || $judul === 'Rasional | Tim' ? 'hidden' : '' }}>Tentang</a>
                    </li>
                </ul>
            </div>

            <div class="col">
                <h5 class="sub-heading text-end">Sosial Media</h5>
                <ul class="flex-column f-text list-unstyled">
                    <li><a href="#!"><img src="/assets/image/icon/InstagramLogo.svg" alt="Instagram Rasional">
                            {{ $rasional[0]->instagram }}</a></li>
                </ul>
            </div>
        </footer>
    </div>

</div>
