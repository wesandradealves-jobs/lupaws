var $magnifying_glass = document.getElementById('magnifying_glass'),
	$magnifying_glass_inner = document.getElementById('magnifying_glass_inner');


function closeMenu(){
	$(".tcon-transform").removeClass("tcon-transform");
}

function _mobileNavigation(){
	$(".tcon").toggleClass("tcon-transform");
} 


$(document).ready(function () {
	combobox();
	navigation();
	new Parallax($magnifying_glass);
});
      
      