var $magnifying_glass = document.getElementById('magnifying_glass'),
	$magnifying_glass_inner = document.getElementById('magnifying_glass_inner');

function spinner(string){
    $(".loading").css("display", string);
}

function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}
function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}
function soLetras(v){
    return v.replace(/\d/g,"") //Remove tudo o que não é Letra
}

function closeModal(string){
	var el = $(string);
	if(el){
		el.fadeOut(),
		el.children("p").remove();
	}
}

function closeMenu(){
	$(".tcon-transform").removeClass("tcon-transform");
}

function _mobileNavigation(){
	$(".tcon").toggleClass("tcon-transform");
} 

$(document).ready(function () {
    $( '#contact-form' ).submit(function( event ) {
        var dataparam = $('#contact-form').serialize();

        $.ajax({
            type: 'POST',
            async: true,
            url: '',
            data: dataparam,
            datatype: 'json',
            cache: true,
            global: false,
            beforeSend: function() { 
                spinner('flex');
            },
            success: function(data) {
                console.log(data);
            },
            complete: function() { 
                spinner('none');
                $('#contact-form')[0].reset();
            }
        }); 
        event.preventDefault();
    }); 
    if($('.telefone').length){
        $('.telefone').mask('(00) 0000-0000');
    }
	combobox();
	navigation();
	faq();
	new Parallax($magnifying_glass);
});
      
      