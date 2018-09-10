<?php setPostViews(get_the_ID()); ?>
<div class="left_ndetail_page">

    <div class="tab_head_nd">
        <?php foreach (get_the_tags() as $tag): ?>
            <span class="btn_a_color font_open"><?php echo $tag->name; ?></span>
        <?php endforeach; ?>
    </div>
    <h2 class="font_open title_new_detail"><?php the_title() ?></h2>
    <div class="date_new font_open">
        <span><i class="fa fa-calendar"></i> <?php the_date('d/m/Y') ?> </span> |
        <span> <i class="fa fa-eye" aria-hidden="true"></i> <?php echo getPostViews(get_the_ID()) ?></span>
    </div>
    <div class="content_new_detail font_open">
        <img class="img-responsive" src="<?php the_post_thumbnail_url() ?>"> <br>
        <?php the_content() ?>
    </div>
</div>
<div class="blog_link_page">
    <?php social_share(); ?>
</div>
<?php get_template_part( 'template-parts/content/related-posts' );?>
