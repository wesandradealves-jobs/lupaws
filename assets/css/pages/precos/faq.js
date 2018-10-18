function faq(){
	if($('[faq]').length){
		var $this = $('[faq]'),
            $handler = $this.children();

            function setVal(title, content){
                var $title = title,
                    $modal = $('.faq-content'),
                    $content = content;

                    if($modal.length){
                        $modal.fadeIn();
                        $tpl = '<p>';
                            $tpl += '<strong>'+ $title +'</strong>' + $content;
                        $tpl += '</p>';

                        $modal.append($tpl);
                    }
            }            
            
			$handler.each(function() {
				var $option = $(this);
				$option.on('click', function(e) {
			    	var $obj = new Object();

			    	$obj['title'] = $option.find('a').text(),
			    	$obj['content'] = $option.find('a').attr('data-content');

			    	setVal($obj['title'], $obj['content']);
			    });    
			});            
    }
}