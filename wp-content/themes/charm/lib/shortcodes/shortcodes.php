<?php

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
add_shortcode( 'charmteam', 'team_shortcode' );


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

function contact_us_shortcode( $atts ) {
    $title = $atts['title'];
    $des = $atts['description'];
    $labelBtn = $atts['labelBtn'] ?: 'Contact us';
    $linkContact = $atts['linkcontact'] ;
    $bg = $atts['background'] ?: get_template_directory_uri() . '/img/bg_f.png';
    $html = '';
    $html .= '<div class="parallax_bg" style="background-image: url(' . $bg . ');">';
    $html .= '<div class="container">';
    $html .= '<div class="row">';
    $html .= '<div class="col-md-1 col-sm-1">';
    $html .= '<div class="parallax_icon">';
    $html .= '<i class="fa fa-envelope" aria-hidden="true"></i>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="col-md-7 col-sm-7">';
    $html .= '<div class="parallax_text">';
    $html .= '<h5 class="font_gothic_bold">' . $title .'</h5>';
    $html .= '<p class="font_gothic_r">' . $des .'</p>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="col-md-4 col-sm-4">';
    $html .= '<center>';
    $html .= '<a href="' . $linkContact . '" class="btn_para font_gothic_bold">' . $labelBtn .'</a>';
    $html .= '</center>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';

    return $html;
}
add_shortcode( 'contact_us', 'contact_us_shortcode' );

function charm_video_shortcode( $atts ) {
    $title = $atts['title'];
    $des = $atts['description'];
    $urlVideo = $atts['url'];
    $direction = $atts['floatvideo'] ?: 'left';
    $classVideoService = $direction != 'left' ? 'video_page_service' : '';
    $classColumnVideo = $direction == 'left' ? 'col-md-6' : 'col-md-5';
    $classColumnText = $direction == 'left' ? 'col-md-5' : 'col-md-6';
    $video = '<div class="video_l">';
    $video .= '<div class="iframe_vd">';
    $video .= '<div class="embed-responsive embed-responsive-16by9">';
    $video .= '<iframe class="embed-responsive-item" src="' . $urlVideo . '" ></iframe>';
    $video .= '</div>';
    $video .= '</div>';
    $video .= '</div>';

    $text = '<div class="video_r">';
    $text .= '<h3 class="font_gothic_bold">' . $title . '</h3>';
    $text .= '<div class="content_vd font_gothic_r">' . $des;
    $text .= '</div>';
    $text .= '</div>';

    $html = '';
    $html .= '<div class="charm3_video ' . $classVideoService . '">';
    $html .= '<div class="container">';
    $html .= '<div class="video_page">';
    $html .= '<div class="row">';
    $html .= '<div class="' . $classColumnVideo . '">';
    if ($direction == 'left') {
        $html .= $video;
    } else {
        $html .= $text;
    }
    $html .= '</div>';
    $html .= '<div class="' . $classColumnText . ' col-md-offset-1 col-sm-offset-0 col-xs-offset-0">';
    if ($direction != 'left') {
        $html .= $video;
    } else {
        $html .= $text;
    }
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    return $html;
}
add_shortcode( 'charm_video', 'charm_video_shortcode' );

function service_home_shortcode( $atts ) {
    $title = $atts['title'];
    $title1 = $atts['title_service1'];
    $title2 = $atts['title_service2'];
    $title3 = $atts['title_service3'];
    $title4 = $atts['title_service4'];
    $des1 = $atts['des_service1'];
    $des2 = $atts['des_service2'];
    $des3 = $atts['des_service3'];
    $des4 = $atts['des_service4'];
    $image = $atts['image'] ? : get_template_directory_uri() . '/img/CharmOutsource.png';

    $html = '';
    $html .= '<div class="charm3_service">';
    $html .= '<div class="container">';
    $html .= '<h3 class="h3_title_id">' . $title . '</h3>';
    $html .= '<div class="col-md-7">';
    $html .= '<div class="service_item">';
    $html .= '<div class="cel_md_6 cel_md_hv">';
    $html .= '<div class="i_it">';
    $html .= '<div class="it_icon"><i class="fa fa-university" aria-hidden="true"></i></div>';
    $html .= '<div class="it_border"></div>';
    $html .= '<div class="it_number">01</div>';
    $html .= '</div>';
    $html .= '<div class="i_h3">' . $title1;
    $html .= '</div>';
    $html .= '<div class="i_content">' . $des1;
    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="cel_md_6 cel_md_hv">';
    $html .= '<div class="i_it">';
    $html .= '<div class="it_icon"><i class="fa fa-university" aria-hidden="true"></i></div>';
    $html .= '<div class="it_border"></div>';
    $html .= '<div class="it_number">02</div>';
    $html .= '</div>';
    $html .= '<div class="i_h3">' . $title2;
    $html .= '</div>';
    $html .= '<div class="i_content">' . $des2;
    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="cel_md_6 cel_md_hv">';
    $html .= '<div class="i_it">';
    $html .= '<div class="it_icon"><i class="fa fa-university" aria-hidden="true"></i></div>';
    $html .= '<div class="it_border"></div>';
    $html .= '<div class="it_number">03</div>';
    $html .= '</div>';
    $html .= '<div class="i_h3">' . $title3;
    $html .= '</div>';
    $html .= '<div class="i_content">' . $des3;
    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="cel_md_6 cel_md_hv">';
    $html .= '<div class="i_it">';
    $html .= '<div class="it_icon"><i class="fa fa-university" aria-hidden="true"></i></div>';
    $html .= '<div class="it_border"></div>';
    $html .= '<div class="it_number">04</div>';
    $html .= '</div>';
    $html .= '<div class="i_h3">' . $title4;
    $html .= '</div>';
    $html .= '<div class="i_content">' . $des4;
    $html .= '</div>';
    $html .= '</div>';

    $html .= '</div>';
    $html .= '</div>';
    $html .= '<div class="col-md-5">';
    $html .= '<div class="service_img">';
    $html .= '<img class="img-responsive" src="' . $image .'">';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    return $html;
}
add_shortcode( 'service_home_page', 'service_home_shortcode' );

function testimonial_shortcode( $atts ) {
    $num = $atts['number'];
    $title = $atts['title'] ? : 'See The Testimonials';
    $testimonials = new WP_Query( array( 'post_type' => 'testimonial', 'posts_per_page' => $num ) );

    $html = '';
    $html .= '<div class="charm3_testimonials">';
    $html .= '<div class="container">';
    $html .= '<h3 class="h3_title_id">' . $title . '</h3>';
    $html .= '<div class="row">';
    $html .= '<div class="col-md-8 col-md-offset-2 col-xs-12">';
    $html .= '<div class="testimonials_sli">';
    $html .= '<div class="slider-for">';

    if( $testimonials->have_posts() ) : while( $testimonials->have_posts() ) : $testimonials->the_post();
        $html .= '<div>';
        $html .= '<div class="img_ts">';
        $html .= '<img class="img-responsive" src="' . get_the_post_thumbnail_url() . '" alt=""/>';
        $html .= '</div>';
        $html .= '</div>';
    endwhile; endif;
    $html .= '</div>';
    $html .= '<div class="slider-nav"> ';
    if( $testimonials->have_posts() ) : while( $testimonials->have_posts() ) : $testimonials->the_post();
        $html .= '<div>';
        $html .= '<p class="font_gothic_r">' . get_the_content() . '</p>';
        $html .= '<h5 class="font_gothic_r">' . get_the_title() . '</h5>';
        $html .= '</div>';
    endwhile; endif;
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';
    $html .= '</div>';

    return $html;
}
add_shortcode( 'testimonial', 'testimonial_shortcode' );

