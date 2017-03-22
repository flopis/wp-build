<?php get_header(); ?>

<?php

$page_id = get_the_ID(); //posto ID
$page_image_url = get_the_post_thumbnail_url(); //paveikslelio url

//var_dump($page_id);
//echo get_the_post_thumbnail_url();

/*
$section1 = get_field('t_hps_section_1');
$post_data = get_post( 35 );
get_template_part('elements/site-header');
global $post;
$post = $post_data;
setup_postdata($post); ?>
*/

$args = array(
  'numberposts' => -1, //visi postai
  'post_type'   => 'post',
  'category'       => 3 //kategorija: team
);

$team = get_posts( $args );
//var_dump($team );

foreach($team as $member){
  //echo $member->post_title.'</br>';
  //echo $member->post_content.'</br>';
  //echo get_the_post_thumbnail_url( $member->ID );
}

?>

<main class="main">



  <?php foreach($team as $member){ //var_dump($member->ID); ?>

    <?php
      $miestas = get_post_meta($member->ID, 'city', true);
      $invisible = get_post_meta($member->ID, 'invisible', true);
      //$miestas = get_field('city', $member->ID);
    ?>

      <?php if (!$invisible): ?>
        <div class="member">
          <div class="header1">
            <h1>MY NAME IS <?php echo $member->post_title; ?></h1>
            <a>I TAKE AMAZING PHOTOS</a>
        </div>
          <div class="box">
            <div class="menu1">
                <div class="photo"><img src="<?php echo get_the_post_thumbnail_url( $member->ID ); ?>" class = 'img-resposive' alt="mostrare-about-18">
                </div>
            </div>
            <div class="main1">

                  <div class="turinys">

                    <h1><?php echo $miestas; ?></h1>
                      <?php
                        //echo $member->post_content;
                        echo apply_filters('the_content', $member->post_content);
                      ?>
                  </div>
                <!-- <div class="turiniys" style="display: none; ">
                    <h1>The City</h1>
                    <p>Chania is the capital of the Chania region on the island of Crete. The city can be divided in two parts, the old town and the modern city.</p>
                    <p>Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing. Resize the browser window to see how the content respond to the resizing.</p><br>
                    <br><b>"MAURIS SUSCIPIT ULLAMCORPER FELIS.SED ALIQUAM MASSA VEL RISUS DAPIBUS QUIS TICIDUNT PURUS LOBORTIS.CRAS ULTRICES, TELLUS UT SOLLICITUDIN FEUGIANT, ENIM TURPIS PELLENTESQUE ARCU."</b><br>
                    <br><p>-John Doe</p>
                    <i>Famous Photographer</i>
                </div> -->

            </div>
            <div class="box1">
                <p>PHOTOGRAPHY SKILLS</p>
                <div class="content1">
                    <div class="content1_vidinis"><a>Portrait</a>
                    </div>
                    <a>89%</a>
                </div>
                <div class="content2">
                    <div class="content2_vidinis"><a>Editorial</a>
                    </div>
                    <a>95%</a>
                </div>
                <div class="content3">
                    <div class="content3_vidinis"><a>Fashion</a>
                    </div>
                    <a>65%</a>
                </div>
            </div>
        </div>
      </div>
    <?php endif; ?>
  <?php } ?>


</main>

<?php wp_reset_postdata(); ?>

<?php get_footer(); ?>
