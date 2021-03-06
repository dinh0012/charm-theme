<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

get_header(); ?>

<div class="main-wrapper clearfix">
    <div id="main" role="main">
        <div class="wth_theme_main">
            <section class="new_page">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <?php
                            // Start the loop.
                            while (have_posts()) : the_post();
                                // Include the single post content template.
                                get_template_part('template-parts/content/single');
                                // End of the loop.
                            endwhile;
                            ?>

                        </div>
                        <div class="col-md-4">
                            <div class="right_new_page">
                                <?php get_sidebar('primary-sidebar'); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div><!-- .site-main -->
</div><!-- .content-area -->
<?php get_footer(); ?>
