<?php
require_once 'lib/Custom_Walker_Nav_Menu_top.php';
require_once 'lib/WPEX_Theme_Options.php';
require_once 'lib/widget/SearchSidebar.php';
require_once 'lib/widget/CommonWidget.php';
require_once 'lib/widget/widget-tabs.php';
require_once 'lib/shortcodes/shortcodes.php';
require_once 'lib/post-type/init_post_type.php';

add_theme_support( 'post-thumbnails' );
/*-----------------------------------------------------------------------------------*/
/* Enqueue scripts and styles
/*-----------------------------------------------------------------------------------*/
if ( ! function_exists( 'themepixels_scripts' ) ) {
    function themepixels_scripts() {

        /*-----------------------------------------------------------------------------------*/
        /* Styles
        /*-----------------------------------------------------------------------------------*/

        wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/fonts/font-awesome/css/font-awesome.min.css' );
        wp_enqueue_style( 'fonts', get_template_directory_uri() . '/css/fonts.css' );
        wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css' );
        wp_enqueue_style( 'slick', get_template_directory_uri() . '/js/slick/slick.css' );
        wp_enqueue_style( 'lightslider', get_template_directory_uri() . '/js/lightslider/dist/css/lightslider.css' );
        wp_enqueue_style( 'theme-style', get_stylesheet_uri() );
        wp_enqueue_style( 'blog', get_template_directory_uri() . '/css/blog.css' );
        wp_enqueue_style( 'contact', get_template_directory_uri() . '/css/contact.css' );
        wp_enqueue_style( 'team', get_template_directory_uri() . '/css/team.css' );
        wp_enqueue_style( 'service', get_template_directory_uri() . '/css/service.css' );

        /*-----------------------------------------------------------------------------------*/
        /* Scripts
        /*-----------------------------------------------------------------------------------*/

        wp_enqueue_script( 'chamr-jquery', get_template_directory_uri() . '/js/jquery-1.10.2.js', array( 'jquery' ), '1.0', true );
        wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js', array( 'jquery' ), '1.0', true );
        wp_enqueue_script( 'slick', get_template_directory_uri() . '/js/slick/slick.js', array( 'jquery' ), '1.0', true );
        wp_enqueue_script( 'lightslider', get_template_directory_uri() . '/js/lightslider/dist/js/lightslider.js', array( 'jquery' ), '1.0', true );
        wp_enqueue_script( 'style', get_template_directory_uri() . '/js/style.js', array( 'jquery' ), '1.0', true );

        if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
            wp_enqueue_script('comment-reply');
        }
    }
}
add_action( 'wp_enqueue_scripts', 'themepixels_scripts' );
function pietergoosen_theme_setup() {
    register_nav_menus( array(
        'charm_outsourcing_menu_footer' => 'Charm outsourcing menu footer',
        'main_menu_footer' => 'Main menu footer',
        'topics_menu_footer' => 'Topics menu footer',
        'primary_menu' => 'Primary menu'
    ) );
}
add_action( 'after_setup_theme', 'pietergoosen_theme_setup' );

function theme_widgets_init()
{

    register_sidebar(array(
        'name' => __('Primary Sidebar', 'themepixels'),
        'id' => 'primary-sidebar',
        'before_widget' => '<div id="%1$s" class="sidebar-widget %2$s clearfix">',
        'after_widget' => '</div>',
        'before_title' => '<div class="widget-title-wrapper"><span class="widget-title-inner"></span><h3 class="widget-title"><span>',
        'after_title' => '</span></h3></div>',
    ));
}
add_action( 'widgets_init', 'theme_widgets_init' );

/*-----------------------------------------------------------------------------------*/
/* Favicon
/*-----------------------------------------------------------------------------------*/
if ( ! function_exists( 'themepixels_favicon' ) ) {
    function themepixels_favicon() {
        $favicon = tps_get_option( 'favicon', 'url' );
        $iphone_icon = tps_get_option( 'iphone_icon', 'url' );
        $ipad_icon = tps_get_option( 'ipad_icon', 'url' );
        $iphone_icon_retina = tps_get_option( 'iphone_icon_retina', 'url' );
        $ipad_icon_retina = tps_get_option( 'ipad_icon_retina', 'url' );

        $output = '';
        if ( $favicon ) {
            $output .= '<link rel="shortcut icon" href="'. esc_url( $favicon ) .'">';
        }
        if ( $iphone_icon ) {
            $output .= '<link rel="apple-touch-icon-precomposed" href="'. esc_url( $iphone_icon ) .'">';
        }
        if ( $ipad_icon ) {
            $output .= '<link rel="apple-touch-icon-precomposed" sizes="72x72" href="'. esc_url( $ipad_icon ) .'">';
        }
        if ( $iphone_icon_retina ) {
            $output .= '<link rel="apple-touch-icon-precomposed" sizes="114x114" href="'. esc_url( $iphone_icon_retina ) .'">';
        }
        if ( $ipad_icon_retina ) {
            $output .= '<link rel="apple-touch-icon-precomposed" sizes="144x144" href="'. esc_url( $ipad_icon_retina ) .'">';
        }

        echo wp_kses( $output, array(
            'link' => array(
                'rel' => array(),
                'sizes' => array(),
                'href' => array()
            ),
        ) );
    }
}
add_filter( 'wp_head', 'themepixels_favicon' );

if ( ! function_exists('tps_get_option') ) {
    function tps_get_option($id, $param = false ) {
        global $themepixels_options;
        $output = '';
        if ( isset($themepixels_options[$id]) && $themepixels_options[$id] !== '' ) {
            $output = $themepixels_options[$id];
        }
        if ( !empty($themepixels_options[$id]) && $param ) {
            $output = $themepixels_options[$id][$param];
        }
        return $output;
    }
}
