<?php get_header(); ?>

<main class="container py-5 my-5">
    <header class="row mb-5 justify-content-center text-center">
        <div class="col-lg-8">
            <h1 class="display-3 fw-bold mb-3">Portfolio</h1>
            <p class="lead text-muted small text-uppercase fw-bold ls-2">Explora mis trabajos en Animo Creations</p>
            <hr class="w-25 mx-auto border-primary border-2 opacity-100">
        </div>
    </header>

    <div class="row g-4">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <div class="col-md-6 col-lg-4">
                    <article class="card h-100 border-0 shadow-sm rounded-4 overflow-hidden tarjeta-proyecto">

                        <a href="<?php the_permalink(); ?>" class="text-decoration-none text-dark">
                            <?php if (has_post_thumbnail()) : ?>
                                <div class="ratio ratio-4x3 overflow-hidden">
                                    <?php the_post_thumbnail('medium_large', ['class' => 'card-img-top object-fit-cover transition-transform']); ?>
                                </div>
                            <?php endif; ?>

                            <div class="card-body p-4">
                                <?php
                                $terms = get_the_terms(get_the_ID(), 'tipo_proyecto');
                                if ($terms) : ?>
                                    <span class="text-primary small fw-bold text-uppercase d-block mb-2">
                                        <?php echo $terms[0]->name; ?>
                                    </span>
                                <?php endif; ?>

                                <h5 class="card-title fw-bold mb-2"><?php the_title(); ?></h5>
                                <p class="card-text text-muted small mb-0">
                                    <?php echo wp_trim_words(get_the_excerpt(), 12); ?>
                                </p>
                            </div>
                        </a>

                    </article>
                </div>
            <?php endwhile;
        else : ?>
            <div class="col-12 text-center">
                <p class="fs-4">Aún no hay proyectos subidos.</p>
            </div>
        <?php endif; ?>
    </div>
</main>

<?php get_footer(); ?>