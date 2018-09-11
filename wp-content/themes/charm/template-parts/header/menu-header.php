<div class="mid_head_charm <?php echo is_front_page() ? 'index_mid_head'  : ''?>" style="background-image: url('<?php echo get_template_directory_uri() . '/img/sli_i.jpg' ?>');"><!-- index_mid_head dung trong trang index -->
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 ">
				<div class="logo_head_m">
					<a href="<?php echo get_home_url() ?>"><img class="img-responsive" src="<?php echo get_template_directory_uri() . '/img/logo.png' ?>"></a>
				</div>
			</div>
			<?php get_template_part( 'template-parts/header/primary-menu' ); ?>

		</div>
	</div>
	<div class="slo_sli <?php echo is_front_page() ? 'slo_sli_id'  : ''?>">
		<div class="text_slo">
			<?php
				if (is_front_page() && !is_single()) {
			?>
				<span class="font_opensan">FIND OUT HOW SMART BUSINESS PEOPLE ARE MAKING MORE MONEY THAN EVER...ALL WHILE SPENDING LESS TIME WORKING</span>
				<a href="" class="font_gothic_bold">Start outsourcing smart now</a>
			<?php
				} else{
					the_title( '<span class="font_opensan">', '</h1>' );
				}
			?>

		</div>
	</div>
</div>