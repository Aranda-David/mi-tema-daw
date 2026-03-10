<footer class="bg-dark text-light py-5 mt-5">
    <div class="container">
        <div class="row g-4">

            <div class="col-md-4">
                <h5 class="fw-bold mb-3">ANIMO <span class="text-primary">creations</span></h5>
                <p class="text-muted small">
                    Transformando ideas en experiencias digitales.
                    Diseño y código por <strong>David Aranda</strong>.
                </p>
            </div>

            <div class="col-md-4 text-center">
                <h5 class="fw-bold mb-3">Navegación</h5>
                <?php
                wp_nav_menu(array(
                    'theme_location' => 'menu-footer',
                    'container'      => false,
                    'menu_class'     => 'list-unstyled footer-links',
                    'fallback_cb'    => '__return_false',
                ));
                ?>
            </div>

            <div class="col-md-4 text-md-end">
                <h5 class="fw-bold mb-3">Sígueme</h5>
                <div class="d-flex justify-content-md-end gap-3">
                    <a href="https://instagram.com/tu_usuario" target="_blank" class="text-light fs-4">
                        <i class="bi bi-instagram"></i>
                    </a>

                    <a href="https://linkedin.com/in/tu_usuario" target="_blank" class="text-light fs-4">
                        <i class="bi bi-linkedin"></i>
                    </a>

                    <a href="https://behance.net/tu_usuario" target="_blank" class="text-light fs-4">
                        <i class="bi bi-behance"></i>
                    </a>

                    <a href="https://github.com/Aranda-David" target="_blank" class="text-light fs-4">
                        <i class="bi bi-github"></i>
                    </a>
                </div>
            </div>

        </div>

        <hr class="my-4 border-secondary">

        <div class="row">
            <div class="col text-center">
                <p class="small text-muted mb-0">
                    &copy; <?php echo date('Y'); ?> David Aranda | Todos los derechos reservados.
                </p>
            </div>
        </div>
    </div>
</footer>

<?php wp_footer(); ?>
</body>

</html>