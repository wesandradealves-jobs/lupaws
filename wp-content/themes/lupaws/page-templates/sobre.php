<?php /* Template Name: Sobre */
    get_header(); 
    global $post;
?>
<?php if(get_field('titulo_webdoor_sobre', option) || get_field('texto_webdoor_sobre', option) || get_field('imagem_webdoor_sobre', option)) : ?>
<section class="webdoor">
  <div class="container">
    <?php if(get_field('titulo_webdoor_sobre', option) || get_field('texto_webdoor_sobre', option)) : ?> 
    <div>
      <?php if(get_field('titulo_webdoor_sobre', option)) : ?><h2 class="title"><?php the_field('titulo_webdoor_sobre', option); ?></h2><?php endif; ?>
      <?php if(get_field('texto_webdoor_sobre', option)) : ?><p class="description"><?php the_field('texto_webdoor_sobre', option); ?></p><?php endif; ?>
    </div>
    <?php endif; ?>
    <?php if(get_field('imagem_webdoor_sobre', option)) : ?>
    <div>
        <img class="magnifying_glass" src="<?php the_field('imagem_webdoor_sobre', option); ?>" alt="<?php the_field('titulo_webdoor_sobre', option); ?>">
    </div>
    <?php endif; ?>
  </div>
</section>
<?php endif; ?>
<?php 
  if(get_field('titulo_webdoor_sobre', option)) : $counter = 0;
?>
<?php 
  $sessions = get_field('sessoes_sobre', option);
  foreach($sessions as $i => $item) {
      $counter++;
      $max = count($sessions);
      $tpl = '<section class="webdoor">';
      $tpl .= '<div class="container">';
      $tpl .= '<div>';
      $tpl .= '<h2 class="title">'.$sessions[$i]['titulo_sessao'].'</h2>';
      $tpl .= '<p class="description">'.$sessions[$i]['texto_sessão'].'</p>';
      $tpl .= '</div>';
      $tpl .= '<div>';
      $tpl .= '<img class="magnifying_glass" src="'.$sessions[$i]['imagem_sessao'].'" alt="'.$sessions[$i]['titulo_sessao'].'">';
      $tpl .= '</div>';
      $tpl .= '</div>';
      if($counter != $max) :
        $tpl .= '<div class="divisor"></div>';
      endif;
      $tpl .= '</section>';

      echo $tpl;
  } 
?>

<?php endif; ?>
<?php get_footer(); ?>