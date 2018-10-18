function combobox(){
	if($('[combobox]').length){
		var $this = $('[combobox]'),
			$options = $this.children('ul'),
			$handler = $this.children('a');

		function toggle(){
	    	$this.toggleClass('toggle');
	    	$options.toggle();			
		}  

		function setVal(title, slug){
			var $title = title,
				$slug = slug;

				$handler
				.attr({ 'data-value' : $slug, 'title' : $title })
				.children('span').text($title);
		}

		function selVal(){
			$options.children().find('a').each(function() {
				var $option = $(this);
				$option.on('click', function(e) {
			    	toggle();
			    	
			    	var $obj = new Object();

			    	$obj['title'] = $option.text(),
			    	$obj['slug'] = $option.attr('data-value');

			    	setVal($obj['title'], $obj['slug']);
			    });    
			});
		}

	    $handler.on('click', function(e) {
	    	toggle();
	    });    

		$(document).mouseup(function (e){
		    var container = $this;
		    if (!container.is(e.target) 
		    && container.has(e.target).length === 0) 
		    {
		    	if($this.is('.toggle') && $options.is(':visible'))
		    		toggle();
		    }
		});	    

		selVal();
	}
}