var $magnifying_glass = document.getElementById('magnifying_glass'),
	$magnifying_glass_inner = document.getElementById('magnifying_glass_inner');

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
	combobox();
	navigation();
	faq();
	new Parallax($magnifying_glass);
});
      
      