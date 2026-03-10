<?php
// Asegúrate de que NO hay nada escrito arriba del <?php

function proyecto_daw_assets()
{
    // CSS de Bootstrap
    wp_enqueue_style('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css');

    // CSS de Swiper
    wp_enqueue_style('swiper-css', 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css');

    // Tu archivo style.css (el que genera SASS)
    wp_enqueue_style('mi-estilo', get_stylesheet_uri());

    // JS de Swiper y tu Main.js
    wp_enqueue_script('swiper-js', 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js', array(), null, true);
    wp_enqueue_script('mi-js', get_template_directory_uri() . '/js/main.js', array('jquery'), null, true);

    // Iconos de Bootstrap
    wp_enqueue_style('bootstrap-icons', 'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css');
}

add_action('wp_enqueue_scripts', 'proyecto_daw_assets');

// Soporte para Imágenes Destacadas y Títulos
function mi_tema_setup()
{
    add_theme_support('post-thumbnails'); // ¡Esto es vital para que aparezcan las fotos!
    add_theme_support('title-tag');      // Para que el SEO de la web sea más fácil y profesional.
}
add_action('after_setup_theme', 'mi_tema_setup');

// Registro de Menús de Navegación
function registrar_mis_menus()
{
    register_nav_menus(
        array(
            'menu-principal' => __('Menú Principal Header'),
            'menu-footer'    => __('Menú Footer')
        )
    );
}
add_action('init', 'registrar_mis_menus');

/* ==========================================================================
   NUEVO: REGISTRO DE PROYECTOS (FEEDBACK JORGE)
   ========================================================================== */

function registrar_portfolio_david()
{

    // 1. REGISTRAR EL CUSTOM POST TYPE (EL MALETÍN)
    $labels_cpt = array(
        'name'               => 'Proyectos Portfolio',
        'singular_name'      => 'Proyecto',
        'menu_name'          => 'Proyectos Portfolio',
        'add_new'            => 'Añadir Nuevo',
        'add_new_item'       => 'Añadir Nuevo Proyecto',
        'edit_item'          => 'Editar Proyecto',
        'all_items'          => 'Todos los Proyectos',
        'view_item'          => 'Ver Proyecto',
        'search_items'       => 'Buscar Proyectos',
    );

    $args_cpt = array(
        'labels'             => $labels_cpt,
        'public'             => true,
        'has_archive'        => true,
        'menu_icon'          => 'dashicons-portfolio', // Este es el maletín que no veías
        'supports'           => array('title', 'editor', 'thumbnail', 'excerpt'),
        'show_in_rest'       => true, // Activa el editor moderno (Gutenberg)
        'menu_position'      => 5,
        'rewrite'            => array('slug' => 'proyectos'),
    );

    register_post_type('proyectos', $args_cpt);

    // 2. REGISTRAR LA TAXONOMÍA (LAS CATEGORÍAS PERSONALIZADAS)
    $labels_tax = array(
        'name'              => 'Tipos de Proyecto',
        'singular_name'     => 'Tipo de Proyecto',
        'menu_name'         => 'Categorías de Proyecto',
    );

    $args_tax = array(
        'hierarchical'      => true, // Como las categorías normales
        'labels'            => $labels_tax,
        'show_ui'           => true,
        'show_admin_column' => true,
        'show_in_rest'      => true,
        'rewrite'           => array('slug' => 'tipo-proyecto'),
    );

    register_taxonomy('tipo_proyecto', array('proyectos'), $args_tax);
}
add_action('init', 'registrar_portfolio_david');
