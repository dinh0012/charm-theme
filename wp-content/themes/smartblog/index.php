<?php
/**
 * The main template file.
 *
 * @package Smart Blog
 * @since 1.0
 */

get_header(); ?>

	<?php
	$content_class = '';
	$sidebar_class = '';
	if( tps_get_option('blog_sidebar_position') == 'default' ) {
		if( tps_get_option('global_sidebar_position') == 'no-sidebar' ) {
			$content_class = 'has-no-sidebar';
			$sidebar_class = 'no-sidebar';
		} elseif( tps_get_option('global_sidebar_position') == 'right-sidebar' ) {
			$content_class = 'content-left';
			$sidebar_class = 'sidebar-right';
		} elseif( tps_get_option('global_sidebar_position') == 'left-sidebar' ) {
			$content_class = 'content-right';
			$sidebar_class = 'sidebar-left';
		} elseif( tps_get_option('global_sidebar_position') == 'both-sidebar' ) {
			$content_class = 'has-both-sidebar';
			$sidebar_class = 'both-sidebar';
		}
	} elseif( tps_get_option('blog_sidebar_position') == 'no-sidebar' ) {
		$content_class = 'has-no-sidebar';
		$sidebar_class = 'no-sidebar';
	} elseif( tps_get_option('blog_sidebar_position') == 'right-sidebar' ) {
		$content_class = 'content-left';
		$sidebar_class = 'sidebar-right';
	} elseif( tps_get_option('blog_sidebar_position') == 'left-sidebar' ) {
		$content_class = 'content-right';
		$sidebar_class = 'sidebar-left';
	} elseif( tps_get_option('blog_sidebar_position') == 'both-sidebar' ) {
		$content_class = 'has-both-sidebar';
		$sidebar_class = 'both-sidebar';
	}
	?>

	<?php
		$content_size_class = 'col-md-8';
		$sidebar_size_class = 'col-md-4';
		if( tps_get_option('blog_sidebar_position') == 'default' ) {
			if( tps_get_option('global_sidebar_position') == 'both-sidebar' ) {
				$content_size_class = 'col-md-6';
				$sidebar_size_class = 'col-md-3';
			}
		} elseif( tps_get_option('blog_sidebar_position') == 'both-sidebar' ) {
			$content_size_class = 'col-md-6';
			$sidebar_size_class = 'col-md-3';
		}
	?>

	<?php
	$layout_class = '';
	if ( have_posts() ) {
		if( tps_get_option('blog_layout') == 'style-2' ) {
			$layout_class = 'blog-masonry blog-2col';
		} elseif( tps_get_option('blog_layout') == 'style-3' ) {
			$layout_class = 'blog-masonry blog-3col';
		}
	}
	?>

	<?php
		if( tps_get_option('enable_homepage_carousel') == '1' && tps_get_option('carousel_position') == 'below-header' ) {
			get_template_part( 'framework/featured-carousel' );
		}
	?>

	<?php
		if( tps_get_option('enable_homepage_slideshow') == '1' ) {
			get_template_part( 'framework/featured-slider' );
		}
	?>

	<div class="main-wrapper clearfix">
		<div id="main" class="container">
			<div class="row">
				 
				<div id="primary" class="content-area <?php echo esc_attr( $content_size_class ); ?> <?php echo esc_attr( $content_class ); ?>">
					<div id="content" class="<?php echo esc_attr( $layout_class ); ?>" role="main">
<!--<div style="margin-bottom: 30px;"><img src="http://charmoutsourcing.com/wp-content/uploads/2017/10/outsource-n.png"></div>-->
<!--<div id="mobile-sidebar"><?php //echo do_shortcode('[contact-form-7 id="1421" title="Sign up"]');?></div>-->
						<?php if ( have_posts() ) :
						
						$pc=0;
						?>

							<?php while ( have_posts() ) : the_post(); ?>

								<?php get_template_part( 'content', get_post_format() ); 
								$pc++;
								?>

							<?php endwhile; ?>

						<?php else : ?>

							<?php get_template_part( 'content', 'none' ); ?>

						<?php endif; ?>

					</div><!-- End #content -->

					<?php
						if( tps_get_option('blog_pagination_type') == 'numbered-pagination' ) {
							themepixels_pagination();
						} elseif( tps_get_option('blog_pagination_type') == 'next-prev' ) {
							themepixels_posts_navigation();
						} else {
							themepixels_posts_navigation();
						}
					?>
					
				</div><!-- End #primary -->

				<aside id="secondary" class="sidebar <?php echo esc_attr( $sidebar_size_class ); ?> <?php echo esc_attr( $sidebar_class ); ?>" role="complementary">
					<div class="sidebar-inner clearfix">
						<?php get_sidebar(); ?>
					</div>
				</aside><!-- End #secondary -->

				<?php
					if( tps_get_option('blog_sidebar_position') == 'default' ) {
						if( tps_get_option('global_sidebar_position') == 'both-sidebar' ) { ?>
							<aside id="secondary-2" class="sidebar <?php echo esc_attr( $sidebar_size_class ); ?> <?php echo esc_attr( $sidebar_class ); ?>" role="complementary">
								<div class="sidebar-inner clearfix">
									<?php get_sidebar( 'secondary' ); ?>
								</div>
							</aside><!-- End #secondary-2 -->
						<?php }
					} elseif( tps_get_option('blog_sidebar_position') == 'both-sidebar' ) { ?>
						<aside id="secondary-2" class="sidebar <?php echo esc_attr( $sidebar_size_class ); ?> <?php echo esc_attr( $sidebar_class ); ?>" role="complementary">
							<div class="sidebar-inner clearfix">
								<?php get_sidebar( 'secondary' ); ?>
							</div>
						</aside><!-- End #secondary-2 -->
					<?php }
				?>

			</div>
		</div>
	</div><!-- End .main-wrapper -->
	
<?php get_footer(); ?>