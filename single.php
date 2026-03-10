<?php get_header(); ?>

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

        <?php
        // Detectamos si es un proyecto para mostrar la Ficha Técnica
        if (get_post_type() == 'proyectos') :
        ?>
            <div class="container py-5 my-5">
                <div class="row">
                    <div class="col-lg-8">
                        <nav aria-label="breadcrumb" class="mb-4">
                            <a href="<?php echo home_url(); ?>#proyectos" class="text-primary text-decoration-none fw-bold">← Volver al Portfolio</a>
                        </nav>

                        <?php
                        $categorias = get_the_terms(get_the_ID(), 'tipo_proyecto');
                        if ($categorias && !is_wp_error($categorias)) : ?>
                            <div class="mb-2">
                                <?php foreach ($categorias as $cat) : ?>
                                    <span class="badge bg-primary rounded-pill me-1 px-3 py-2">
                                        <?php echo $cat->name; ?>
                                    </span>
                                <?php endforeach; ?>
                            </div>
                        <?php endif; ?>

                        <h1 class="display-4 fw-bold mb-4"><?php the_title(); ?></h1>

                        <div class="mb-5 shadow-lg rounded-4 overflow-hidden">
                            <?php if (has_post_thumbnail()) : ?>
                                <?php the_post_thumbnail('full', ['class' => 'img-fluid w-100']); ?>
                            <?php endif; ?>
                        </div>

                        <div class="entry-content fs-5">
                            <?php the_content(); ?>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="card border-0 bg-light p-4 sticky-top" style="top: 2rem;">
                            <h4 class="fw-bold mb-4 border-bottom pb-2">Ficha Técnica</h4>

                            <?php if (get_field('software')): ?>
                                <div class="mb-3">
                                    <span class="text-muted d-block small text-uppercase fw-bold">Software Utilizado:</span>
                                    <p class="fs-5 text-dark"><?php the_field('software'); ?></p>
                                </div>
                            <?php endif; ?>

                            <?php if (get_field('tipo_de_trabajo')): ?>
                                <div class="mb-3">
                                    <span class="text-muted d-block small text-uppercase fw-bold">Tipo de Proyecto:</span>
                                    <p class="fs-5 text-dark"><?php the_field('tipo_de_trabajo'); ?></p>
                                </div>
                            <?php endif; ?>

                            <?php if (get_field('rol_en_el_proyecto')): ?>
                                <div class="mb-3">
                                    <span class="text-muted d-block small text-uppercase fw-bold">Mi Rol:</span>
                                    <p class="fs-5 text-primary fw-bold"><?php the_field('rol_en_el_proyecto'); ?></p>
                                </div>
                            <?php endif; ?>

                            <div class="d-grid mt-4">
                                <a href="https://animocreations.com" target="_blank" class="btn btn-primary rounded-pill">Contactar con la Agencia</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <?php else : ?>
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <h1 class="display-4 fw-bold"><?php the_title(); ?></h1>
                        <div class="my-4">
                            <?php the_post_thumbnail('large', ['class' => 'img-fluid rounded']); ?>
                        </div>
                        <div class="entry-content">
                            <?php the_content(); ?>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>

<?php endwhile;
endif; ?>

<?php get_footer(); ?>