<?php get_header(); ?>

<main class="container py-5 my-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

                    <h1 class="display-4 fw-bold text-center mb-4"><?php the_title(); ?></h1>

                    <div class="entry-content">
                        <?php the_content(); ?>
                    </div>

            <?php endwhile;
            endif; ?>

        </div>
    </div>
</main>

<?php get_footer(); ?>