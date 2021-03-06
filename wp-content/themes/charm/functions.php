<?php
require_once 'lib/Custom_Walker_Nav_Menu_top.php';
require_once 'lib/WPEX_Theme_Options.php';
require_once 'lib/widget/SearchSidebar.php';
require_once 'lib/widget/CommonWidget.php';
require_once 'lib/widget/widget-tabs.php';
require_once 'lib/shortcodes/shortcodes.php';
require_once 'lib/post-type/init_post_type.php';
require_once 'lib/post-share.php';
require_once 'lib/meta-box/meta-box.php';


function theme_setup() {
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'post-formats', array( 'audio', 'gallery', 'image', 'link', 'quote', 'status', 'video' ) );
}
add_action( 'after_setup_theme', 'theme_setup' );

function theme_register_meta_boxes( $meta_boxes ){
    $prefix = 'themepixels_';
    $meta_boxes[] = array(
        'id'         => 'themepixels_format_video',
        'title'      => __( 'Video Post Options', 'themepixels' ),
        'post_types' => array( 'post' ),
        'context'    => 'normal',
        'priority'   => 'high',
        'autosave'   => true,
        'fields'     => array(

            array(
                'name'				=> __( 'Video Type', 'themepixels' ),
                'id'				=> "{$prefix}video_type",
                'type'				=> 'select',
                'options'			=> array(
                    'embed'			=> __( 'Embed', 'themepixels' ),
                    'selfhosted'	=> __( 'Self Hosted', 'themepixels' ),
                ),
                'multiple'			=> false,
                'std'				=> '',
                'placeholder'		=> __( 'Select Video Type', 'themepixels' ),
            ),

            array(
                'name'				=> __( 'Video Embed URL', 'themepixels' ) .' <a href="http://codex.wordpress.org/Embeds" target="_blank">'. __( '(Learn More)', 'themepixels' ) .'</a>',
                'id'				=> "{$prefix}post_video_embed_url",
                'type'				=> 'oembed',
            ),

            array(
                'name'				=> __( 'Self Hosted Video', 'themepixels' ),
                'id'				=> "{$prefix}post_self_hosted_video",
                'type'				=> 'file_input',
            ),
        )
    );
    return $meta_boxes;
}
add_filter( 'rwmb_meta_boxes', 'theme_register_meta_boxes' );

/*-----------------------------------------------------------------------------------*/
/* Enqueue scripts and styles
/*-----------------------------------------------------------------------------------*/
if ( ! function_exists( 'themecharm_scripts' ) ) {
    function themecharm_scripts() {

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
add_action( 'wp_enqueue_scripts', 'themecharm_scripts' );

function admin_style() {
    wp_enqueue_media();
    wp_enqueue_style('admin-styles', get_template_directory_uri().'/css/redux-admin.css');
    wp_enqueue_style('redux-fields', get_template_directory_uri().'/css/redux-fields.css');
    wp_enqueue_script('admin-script', get_template_directory_uri().'/js/admin.js');
}
add_action('admin_enqueue_scripts', 'admin_style');

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
        'name' => __('Primary Sidebar', 'themecharm'),
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
if ( ! function_exists( 'themecharm_favicon' ) ) {
    function themecharm_favicon() {
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
add_filter( 'wp_head', 'themecharm_favicon' );

if ( ! function_exists('tps_get_option') ) {
    function tps_get_option($id, $param = false ) {
        global $themecharm_options;
        $output = '';
        if ( isset($themecharm_options[$id]) && $themecharm_options[$id] !== '' ) {
            $output = $themecharm_options[$id];
        }
        if ( !empty($themecharm_options[$id]) && $param ) {
            $output = $themecharm_options[$id][$param];
        }
        return $output;
    }
}

function setPostViews($postID) {
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
function getPostViews($postID){
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0 View";
    }
    return $count.' Views';
}