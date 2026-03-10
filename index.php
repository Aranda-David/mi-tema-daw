<?php get_header(); ?>

<section class="hero-section bg-light py-5">
    <div class="container">
        <div class="row align-items-center">

            <div class="col-lg-8">
                <h2 class="display-3 fw-bold">
                    <?php the_field('titulo_hero'); ?>

                    <a href="<?php the_field('enlace_agencia'); ?>" target="_blank" class="text-primary text-decoration-none">
                        animocreations.com
                    </a>
                </h2>

                <p class="fs-5 mt-3 text-muted">
                    <strong>David Aranda:</strong> Desarrollador Web y diseñador UI.
                    Especializado en WordPress, Sass y soluciones digitales modernas.
                    Actualmente desarrollando proyectos en el equipo de "ANIMO Diseño y Comunicación".
                </p>

                <div class="mt-4">
                    <a href="#proyectos" class="btn-personalizado">Ver mis proyectos</a>
                </div>
            </div>

            <div class="col-lg-4 text-center">
                <?php
                $foto_panel = get_field('imagen_hero');
                $foto_defecto = get_template_directory_uri() . '/assets/img/design.jpg';
                ?>
                <div class="px-4">
                    <img src="<?php echo $foto_panel ? $foto_panel : $foto_defecto; ?>"
                        alt="Diseño personalizado"
                        class="img-fluid rounded-3 shadow-lg">
                </div>
            </div>

        </div>
    </div>
</section>

<section id="servicios" class="py-5">
    <div class="container text-center">
        <h2 class="mb-5">¿Qué hacemos en ANIMO?</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 mb-4">
                    <i class="bi bi-code-slash h1 text-primary"></i>
                    <h3>Maquetación</h3>
                    <p>HTML5, SASS y Bootstrap para webs ultra rápidas.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 mb-4">
                    <i class="bi bi-wordpress h1 text-primary"></i>
                    <h3>WordPress</h3>
                    <p>Temas a medida usando la jerarquía oficial y ACF.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 mb-4">
                    <i class="bi bi-brush h1 text-primary"></i>
                    <h3>Diseño UI</h3>
                    <p>Prototipado en Figma cuidando cada píxel.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="proyectos" class="py-5 bg-white">
    <div class="container">
        <h2 class="text-center mb-5 fw-bold">Mis Últimos Proyectos</h2>
        <div class="row g-4">
            <?php
            $args = array(
                'post_type'      => 'proyectos',
                'posts_per_page' => 3,
                'orderby'        => 'date',
                'order'          => 'DESC'
            );
            $query = new WP_Query($args);

            if ($query->have_posts()) :
                while ($query->have_posts()) : $query->the_post();
                    $post_id = get_the_ID();
            ?>

                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm border-0 tarjeta-proyecto">

                            <div class="card-img-top-container shadow-sm">
                                <?php if (has_post_thumbnail()) : ?>
                                    <?php the_post_thumbnail('medium_large', ['class' => 'card-img-top w-100 h-100 object-fit-cover']); ?>
                                <?php else : ?>
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/img/design2.jpg" class="card-img-top" alt="Proyecto">
                                <?php endif; ?>
                            </div>

                            <div class="card-body d-flex flex-column">

                                <?php
                                $terminos = get_the_terms($post_id, 'tipo_proyecto');
                                if ($terminos && !is_wp_error($terminos)) : ?>
                                    <div class="mb-2 d-flex flex-wrap gap-1">
                                        <?php foreach ($terminos as $termino) : ?>
                                            <span class="badge bg-light text-primary border align-self-start">
                                                <?php echo $termino->name; ?>
                                            </span>
                                        <?php endforeach; ?>
                                    </div>
                                <?php endif; ?>

                                <h5 class="card-title fw-bold text-dark"><?php the_title(); ?></h5>
                                <p class="small text-muted mb-3"><?php echo wp_trim_words(get_the_excerpt(), 10); ?></p>

                                <div class="mb-4 mt-auto">
                                    <?php
                                    $software = get_field('software', $post_id);
                                    $tipo_job  = get_field('tipo_de_trabajo', $post_id);
                                    $rol_dev   = get_field('rol_en_el_proyecto', $post_id);

                                    if ($software || $tipo_job || $rol_dev) : ?>
                                        <div class="p-3 border-start border-primary border-3 bg-light rounded-end" style="font-size: 0.85rem;">

                                            <?php if ($tipo_job): ?>
                                                <div class="mb-1 text-dark">
                                                    <strong>Tipo:</strong> <?php echo $tipo_job; ?>
                                                </div>
                                            <?php endif; ?>

                                            <?php if ($software): ?>
                                                <div class="mb-1 text-secondary">
                                                    <strong>Software:</strong> <?php echo $software; ?>
                                                </div>
                                            <?php endif; ?>

                                            <?php if ($rol_dev): ?>
                                                <div class="text-primary fw-bold">
                                                    <strong>Rol:</strong> <?php echo $rol_dev; ?>
                                                </div>
                                            <?php endif; ?>

                                        </div>
                                    <?php endif; ?>
                                </div>

                                <div class="d-flex justify-content-between align-items-center">
                                    <a href="<?php the_permalink(); ?>" class="btn btn-primary btn-sm rounded-pill px-3">Ver detalles</a>
                                    <small class="text-muted italic" style="font-size: 0.7rem;">By: David</small>
                                </div>

                            </div>
                        </div>
                    </div>

                <?php endwhile;
                wp_reset_postdata();
            else : ?>
                <div class="col-12 text-center">
                    <p>No hay proyectos en el portfolio todavía.</p>
                </div>
            <?php endif; ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>