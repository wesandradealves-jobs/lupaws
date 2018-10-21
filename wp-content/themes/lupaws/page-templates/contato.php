<?php /* Template Name: Contato */
    get_header(); 
    global $post;
?>
<section class="contato">
  <div class="container">
    <h2 class="title">Fale com a gente</h2>
    <p>Lorem Ipsum é que nem os comportamentos machistas dentro da criação. Você não presta atenção, só sai reproduzindo por aí.</p>
    <form id="contact-form" class="contact-form" method="POST">
      <div>
        <span>
          <input onkeypress="mascara(this,soLetras)" name="nome" placeholder="Qual seu nome?" type="text">
        </span>
        <span>
          <input name="email" placeholder="Qual seu e-mail?" type="email">
        </span>
        <span>
          <input class="telefone" name="telefone" placeholder="E o seu telefone?" type="tel">
        </span>
        <span>
          <input name="assunto" placeholder="Qual assunto da mensagem?" type="text">
        </span>
      </div>
      <div>
        <span>
          <textarea name="mensagem"></textarea>
        </span>
      </div>
      <div>
        <button class="btn btn-2">Enviar Mensagem <i class="ico fa fa-angle-right"></i></button>
      </div>
    </form>
    <?php
      echo "
      <script>
          $(document).ready(function () {
              $( '#contact-form' ).submit(function( event ) {
                  var dataparam = $('#contact-form').serialize();

                  $.ajax({
                      type: 'POST',
                      async: true,
                      url: '".site_url('/PHPMailer/send.php')."',
                      data: dataparam,
                      datatype: 'json',
                      cache: true,
                      global: false,
                      beforeSend: function() { 
                          spinner('flex');
                      },
                      success: function(data) {
                          console.log('Sucesso');
                      },
                      complete: function() { 
                          spinner('none');
                          $('<p class=".'"'.'post-msg'.'"'.">Enviado com Sucesso</p>').insertAfter($('#contact-form'));
                          $('#contact-form')[0].reset();
                          setTimeout(function(){ 
                              $('#contact-form').next().fadeOut();
                          }, 3000);
                      }
                  }); 
                  event.preventDefault();
              }); 
          });         
      </script>"; 
      ?>
  </div>
</section>
<?php get_footer(); ?>