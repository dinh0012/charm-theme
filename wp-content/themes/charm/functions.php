<?php
require_once 'lib/Custom_Walker_Nav_Menu_top.php';
require_once 'lib/WPEX_Theme_Options.php';
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

        wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery-1.10.2.js', array( 'jquery' ), '1.0', true );
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

add_shortcode( 'charmteam', 'team_shortcode' );
function team_shortcode( $atts ) {

    global $TLPteam;
    if (!$TLPteam) {
        return;
    }
    $atts          = shortcode_atts( array(
        'layout'             => 1,
        'member'             => null,
        'image'              => 'true',
        'col'                => 3,
        'orderby'            => 'date',
        'order'              => 'DESC',
        'name-color'         => null,
        'designation-color'  => null,
        'sd-color'           => null,
        'loop'               => 1,
        'autoplay'           => 1,
        'autoplayHoverPause' => 1,
        'nav'                => 1,
        'dots'               => 1,
        'autoHeight'         => 1,
        'lazyLoad'           => 1,
        'rtl'                => 0,
    ), $atts, 'tlpteam' );
    $atts['image'] = 'true' === $atts['image'];

    if ( ! in_array( $atts['col'], array_keys( $TLPteam->scColumns() ) ) ) {
        $atts['col'] = 3;
    }
    if ( ! in_array( $atts['layout'], array_keys( $TLPteam->scLayouts() ) ) ) {
        $atts['layout'] = 1;
    }
    $posts_per_page = $atts['member'] ? absint( $atts['member'] ) : '-1';
    $html           = null;

    $args = array(
        'post_type'      => 'team',
        'post_status'    => 'publish',
        'posts_per_page' => $posts_per_page,
        'orderby'        => $atts['orderby'],
        'order'          => $atts['order']
    );
    if ( is_user_logged_in() && is_super_admin() ) {
        $args['post_status'] = array( 'publish', 'private' );
    }
    $settings      = get_option( $TLPteam->options['settings'] );
    $fImgSize      = ! empty( $settings['feature_img_size'] ) ? $settings['feature_img_size'] : $TLPteam->options['feature_img_size'];
    $customImgSize = ! empty( $settings['rt_custom_img_size'] ) ? $settings['rt_custom_img_size'] : array();

    $teamQuery = new WP_Query( $args );
    $layoutID  = "tlp-team-" . mt_rand();
    $grid      = $atts['col'] == 5 ? '24' : 12 / $atts['col'];
    if ( $teamQuery->have_posts() ) {
        $html  .= "<div class='' id='{$layoutID}' data-desktop='{$grid}'>";
        $html .= "<section class='team_page'>";
        $html .= "<div class='container'>";
        $html .= "<div class='row'>";
        $html .= "<div class='section_theme_page'>";
        while ( $teamQuery->have_posts() ) : $teamQuery->the_post();
            $pID         = get_the_ID();
            $title       = get_the_title();
            $pLink       = get_permalink();
            $telephone   = get_post_meta( get_the_ID(), 'telephone', true );
            $designation = get_post_meta( get_the_ID(), 'designation', true );

            if ( has_post_thumbnail() ) {
                $imgSrc = $TLPteam->getFeatureImageSrc( $pID, $fImgSize, $customImgSize );
            } else {
                $imgSrc = $TLPteam->assetsUrl . 'images/demo.jpg';
            }
            $sLink = unserialize( get_post_meta( get_the_ID(), 'social', true ) );
            $html .= "<div class='cel_md_3 cod_sm_4 cod_tm_6 cod_wl_12'>";
            $html .= layoutTeam( $title, $pLink, $imgSrc, $designation, $telephone, $sLink );
            $html .= "</div>";

        endwhile;
        wp_reset_postdata();
        // end row
        $html .= '</div>';
        $html .= '</div>';
        $html .= '</div>';
        $html .= '</div>';
        $html .= '</div>'; // end container
    } else {
        $html .= "<p>" . __( 'No member found', TLP_TEAM_SLUG ) . "</p>";
    }

    return $html;
}

function layoutTeam( $title, $pLink, $imgSrc, $designation, $telephone, $sLink ) {
    global $TLPteam;
    $settings = get_option( $TLPteam->options['settings'] );
    $html     = null;
    $html     .= '<div class="item_team">';
    $html     .= '<div class="border_img"><div class="border_eff"></div></div>';
    if ( $imgSrc ) {
        if ( $settings['link_detail_page'] == 'no' ) {
            $html .= '<div class="img_t"><img class="img-responsive" src="'. $imgSrc . '" alt="' . $title . '"></div>';
        } else {
            $html .= '<a title="' . $title . '" href="' . $pLink . '"><div class="img_t"><img class="img-responsive" src="'. $imgSrc . '" alt="' . $title . '"></div></a>';
        }
    }
    $html .= '<div class="content_t">';
    if ( $settings['link_detail_page'] == 'no' ) {
        $html .= '<h3 class="h3_title_blog font_gothic_bold">' . $title . '</h3>';
    } else {
        $html .= '<a title="' . $title . '" href="' . $pLink . '"><h3 class="h3_title_blog font_gothic_bold">' . $title . '</h3></a>';
    }
    if ( $designation ) {
        $html .= '<span class="font_gothic_r">' . $designation . '</span>';
    }
    if ( $telephone ) {
        $html .= '<div class="phone_team font_gothic_r">' . $telephone . '</div>';
    }
    $html .= '</div>';

    $html .= '<div class="tpl-social">';
    if ( $sLink ) {
        foreach ( $sLink as $id => $link ) {
            $html .= "<a href='{$sLink[$id]}' title='$id' target='_blank'><i class='fa fa-$id'></i></a>";
        }
    }
    $html .= '</div>';
    $html .= '</div>';

    return $html;
}