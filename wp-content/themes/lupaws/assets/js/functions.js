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
    $('.navigation-mobile').removeClass('toggle');
}

function _mobileNavigation(){
	$(".tcon").toggleClass("tcon-transform");
    $('.navigation-mobile').toggleClass('toggle');
} 

$(window).on("resize scroll", function (e) {
    closeMenu();
}); 

$(document).ready(function () {
    if($('.telefone').length){
        $('.telefone').mask('(00) 0000-0000');
    }
	combobox();
	navigation();
	faq();
    var scene = document.getElementById('magnifying_glass');
    var parallaxInstance = new Parallax(scene);
});
      
      