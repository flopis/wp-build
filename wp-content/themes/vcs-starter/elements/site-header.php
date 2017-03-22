<header class="menu-vd">

    <div class="logo">
      <a href="<?php echo get_site_url(); ?>">
        *Mostrare
      </a>
    </div>

    <?php
      wp_nav_menu(array(

        'menu' => 'primary-navigation',
        'theme_location' => 'primary-navigation',
        'container' => '<ul></ul>'

      ));
    ?>

        <nav class="social">
              <ul>
                <li><a href="http://twitter.com/">Twitter <i class="fa fa-twitter"></i></a></li>
                <li><a href="http://facebook.com/">Facebook <i class="fa fa-facebook"></i></a></li>
                <li><a href="http://dribbble.com/">Dribbble <i class="fa fa-dribbble"></i></a></li>
                <li><a href="http://behance.net">Behance <i class="fa fa-behance"></i></a></li>
              </ul>
            </nav>
        <i>Copyright © 2015 Mostrate.</i><br>
        <i>All rights reserved</i>
    </header>
