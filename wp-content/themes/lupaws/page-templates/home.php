<?php /* Template Name: Home */
    get_header(); 
    global $post;
?>
<?php if(get_field('titulo_webdoor', option) || get_field('texto_webdoor', option) || get_field('imagem_webdoor', option) || get_field('url_webdoor', option)) : ?>
<section class="webdoor">
  <div class="container">
    <?php if(get_field('titulo_webdoor', option) || get_field('texto_webdoor', option)) : ?> 
    <div>
      <?php if(get_field('titulo_webdoor', option)) : ?><h2 class="title"><?php the_field('titulo_webdoor', option); ?></h2><?php endif; ?>
      <?php if(get_field('texto_webdoor', option)) : ?><p class="description"><?php the_field('texto_webdoor', option); ?></p><?php endif; ?>
      <?php if(get_field('url_webdoor', option)) : ?><a href="<?php the_field('url_webdoor', option); ?>" title="Veja como contratar" class="btn btn-1">Veja como contratar <i class="ico fa fa-angle-right"></i></a><?php endif; ?>
    </div>
    <?php endif; ?>
    <?php if(get_field('imagem_webdoor', option)) : ?> 
    <div>
      <div id="magnifying_glass" class="webdoor-detail">
        <?php if(get_field('imagem_webdoor', option)[0]['imagem']) : ?><img data-depth="0.5" class="magnifying_glass" src="<?php echo get_field('imagem_webdoor', option)[0]['imagem']; ?>" alt="<?php the_field('titulo_webdoor', option); ?>"><?php endif; ?>
        <?php if(get_field('imagem_webdoor', option)[1]['imagem']) : ?><img data-depth="0.3" class="magnifying_glass_inner" src="<?php echo get_field('imagem_webdoor', option)[1]['imagem']; ?>" alt="<?php the_field('titulo_webdoor', option); ?>"><?php endif; ?>
      </div>
    </div>
    <?php endif; ?>
  </div>
</section>
<?php endif; ?>
<?php if(get_field('titulo_projeto', option) || get_field('texto_projeto', option) || get_field('imagem_projeto', option) || get_field('url_projeto', option)) : ?>
<section class="projetos">
  <div class="container">
    <?php if(get_field('titulo_projeto', option)) : ?><h2 class="title"><?php echo get_field('titulo_projeto', option); ?></h2><?php endif; ?>
    <?php if(get_field('texto_projeto', option)) : ?><p class="description"><?php echo get_field('texto_projeto', option); ?></p><?php endif; ?>
    <?php if(get_field('imagem_projeto', option)) : ?>
    <div class="screenshots">
      <?php 
        $screenshots = get_field('imagem_projeto', option);
        foreach($screenshots as $i => $item) {
            $tpl = '<div>';
              $tpl .= '<h3 class="title">'.$screenshots[$i]['screenshot_titulo'].'</h3>'; 
              $tpl .= '<img src="'.$screenshots[$i]['screenshot'].'" alt="'.$screenshots[$i]['screenshot_titulo'].'">';
            $tpl .= '</div>';

            echo $tpl;
        }         
      ?>
    </div>
    <?php endif; ?>
    <?php if(get_field('url_projeto', option)) : ?><a href="<?php echo get_field('url_projeto', option); ?>" class="btn btn-1">Conheça mais sobre Lupa WBS <i class="ico fa fa-angle-right"></i></a><?php endif; ?>
  </div>
</section>
<?php endif; ?>
<?php if(get_field('titulo_barra', option) || get_field('url_barra', option)) : ?> 
<section class="comece-agora">
  <div class="container">
    <?php if(get_field('titulo_barra', option)) : ?>
    <div>
      <h3 class="title"><?php echo get_field('titulo_barra', option); ?></h3>
    </div>
    <?php endif; ?>
    <?php if(get_field('url_barra', option)) : ?>
    <div>
      <a href="<?php echo get_field('url_barra', option); ?>" class="btn btn-1">Contrate Agora <i class="ico fa fa-angle-right"></i></a>
    </div>
    <?php endif; ?>
  </div>
</section>
<?php endif; ?>
<?php if(get_field('titulo_rodape', option) || get_field('subtitulo_rodape', option)) : ?> 
<section class="branding">
  <div class="container">
    <p data-subtitle='<?php echo (get_field('subtitulo_rodape', option)) ? get_field('subtitulo_rodape', option) : ''; ?>'><?php echo (get_field('titulo_rodape', option)) ? get_field('titulo_rodape', option) : ''; ?></p>
  </div>
</section>
<?php endif; ?>
<?php get_footer(); ?>