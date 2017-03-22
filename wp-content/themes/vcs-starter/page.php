<?php get_header(); ?>

<?php
  $page_id = get_the_ID(); //posto ID
  $page_image_url = get_the_post_thumbnail_url(); //paveikslelio url
  $vardas = get_post_meta($page_id, 'vardas', true);
  //echo $page_id;
?>


<div class="mano_nuotrauka">
  <img src="<?php echo $page_image_url; ?>">
</div>
<div class="mano_vardas">

  <h1><?php echo $vardas; ?></h1>


</div>

<?php get_footer(); ?>
