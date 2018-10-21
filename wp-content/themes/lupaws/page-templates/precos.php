<?php /* Template Name: Precos */
    get_header(); 
    global $post;
?>
<?php if(get_field('planos', option)) : $counter = 0; ?> 
<section class="precos">
  <div class="container">
    <h2 class="title">Preços</h2>
    <div class="price-boxes">
      <?php 
        $planos = get_field('planos', option);
        $tpl = '<div class="price-box-row">';
        function priceBox($cor, $plano, $decimal, $centavo, $periodicidade, $description, $url, $index){
            echo '
            <div class="price-box price-box-0'.$index.'">
              <div class="price-box-inner">
                <div class="price-box-header">
                  <p>'.$plano.'</p>
                  <p class="price">
                    '.$decimal.' <span>,'.$centavo.' <small>/'.$periodicidade.'</small></span>
                  </p>
                </div>
                <ul class="price-box-description">';
                    foreach($description as $j => $item) {
                      echo '<li><i class="fa fa-check"></i>'.$description[$j]['texto_descricao'].'</li>';
                    }
                echo '
                </ul>
                <a href="'.$url.'" title="Contrate Agora" class="btn btn-1">Contrate Agora <i class="ico fa fa-angle-right"></i></a>
              </div>
            </div> 
            <style type="text/css" media="screen">
              .precos .container .price-boxes .price-box-row > .price-box-0'.$index.' .price-box-header{
                background: '.$cor.';
                background: -moz-linear-gradient(top, '.$cor.' 0%, #ffffff 160%);
                background: -webkit-linear-gradient(top, '.$cor.' 0%,#ffffff 160%);
                background: linear-gradient(to bottom, '.$cor.' 0%,#ffffff 160%);
              }
            </style>
            ';          
        }


        foreach($planos as $i => $item) {
            $counter++;
            $max = count($planos);
            $descricao = $planos[$i]['descricao_plano'];
            $price = explode(',', $planos[$i]['valor_plano']);
            $dec = $price[0];
            $cent = $price[1];

            if($counter == 1){
              echo '<div class="price-box-row">';
                priceBox($planos[$i]['cor_plano'], $planos[$i]['titulo_plano'], $dec, $cent, $planos[$i]['periodicidade_plano'], $planos[$i]['descricao_plano'], $planos[$i]['url_plano'], $counter);
              echo '</div> 
              <div class="divisor"></div> 
              <div class="price-box-row">';
            } else {
              priceBox($planos[$i]['cor_plano'], $planos[$i]['titulo_plano'], $dec, $cent, $planos[$i]['periodicidade_plano'], $planos[$i]['descricao_plano'], $planos[$i]['url_plano'], $counter);
            }
        } 
        echo '</div>';
      ?>
    </div>
  </div>
</section>
<?php endif; ?>
<?php if(get_field('faq', option) || get_field('texto_sessao_faq', option)) : ?> 
<section class="faq">
  <div class="container">
    <h2 class="title">Dúvidas Frequentes:</h2>
    <?php if(get_field('texto_sessao_faq', option)) : ?><p><?php the_field('texto_sessao_faq', option); ?></p><?php endif; ?>
    <ul faq="true" class="faq-list">
      <?php  
        $faq = get_field('faq', option);
        foreach($faq as $i => $item) {
          echo '<li>
            <div class="faq-inner">
                <a data-content="'.$faq[$i]['texto_faq'].'" href="javascript:void(0)">'.$faq[$i]['titulo_faq'].'</a>
                <i><img src="'.get_template_directory_uri().'/assets/imgs/ico.png"/></i>
            </div>
          </li>';
        }
      ?>
                                                                          
    </ul>
    <div class="faq-content">
      <a href="javascript:void(0)" onclick="closeModal('.faq-content')" class="close-modal">
        <i class="fa fa-close"></i>
      </a>
    </div>            
  </div>
</section>
<?php endif; ?>
<?php get_footer(); ?>