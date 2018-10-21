function windowScroll(){
    var st = $(this).scrollTop();
    $( 'section' ).each(function() {
    	if($(this).index() != 0){
	        if($(this).offset().top >= (st + 600)){
	            $(this).removeClass('animated');
	        } else {
	            $(this).addClass('animated');
	        }	
			if(st + $(window).height() >= $(document).height()) {
	        	$('section:last-of-type').addClass('animated');
	        	console.log('Fim da página');
	        }
    	} 
    });	
}

function navigation(){
    $(window).scroll(function(event){
    	windowScroll();
    });   
    $( 'section' ).each(function() {
    	if($(this).index() == 0){
	        $(this).addClass('animated');
    	} 
    });	
}