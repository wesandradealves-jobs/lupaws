var $i = 0,
	$j = 0,
	$k = 0,
	$l = 0,
	$m = 0,
	$n = 0,
	$o = 0,
	$header = $('.header'),
	$menu = $('.menu'),
	$languages = $('.languages'),
	$copyright = $('.copyright'),
	$content = $('.content'),
	$site = $('title'),
	$favico = $('[rel*="icon"]'),
	$ctpl = '',
	$ntpl = '',
	$ltpl = '';


	$.ajax({
		type: 'GET',
		headers: {          
			Accept: "text/plain; charset=utf-8", "Content-Type": "text/plain; charset=utf-8"   
		},  		
		url: 'content.json',
		dataType: 'json',
		complete: function(data) { 
			var result = JSON.parse(data.responseText); 
			$.each(result, function(key, val){
				switch(key){
					case 'languages' :
				        for ($i; $i < val.length; $i++) {
							$ltpl += '<li>';
							$ltpl += '<a data-value="'+ val[$i]['slug'] +'" title="'+ val[$i]['label'] +'" href="javascript:void(0)">'+ val[$i]['label'] +'</a>';
							$ltpl += '</li>';
				        }
				        $languages.append($ltpl);
					break;
					case 'customizer' : 
						$header.children().prepend('<h1 class="logo"><img src="'+ val[0]['logo'] +'" alt="'+ val[0]['title'] +'" /></h1>');
						$copyright.text(val[0]['copyright']);
						$site.html(val[0]['site_name']);
						$favico.attr('href', val[0]['favico']);
					break;
					case 'menu' : 
				        for ($j; $j < val.length; $j++) {
							$ntpl += '<li>';
							$ntpl += '<a data-slug="'+ val[$j]['slug'] +'" '+ ( (val[$j]['id'] == 0) ? 'class = "active"' : '' ) +' href="'+ val[$j]['url'] +'" title="'+ val[$j]['title'] +'">'+ val[$j]['title'] +'</a>';
							$ntpl += '</li>';
				        }
				        $menu.prepend($ntpl);
					break;
				}
			});  
		},
	  	error: function(errorThrown){
	    	console.log(errorThrown);
	    	console.log('fail');
	  	}
	}); 

function get_content(string){
	$.ajax({
		type: 'GET',
		headers: {          
			Accept: "text/plain; charset=utf-8", "Content-Type": "text/plain; charset=utf-8"   
		},  		
		url: 'content.json',
		dataType: 'json',
		beforeSend: function() { 
			spinner('flex');
			var string = string;
		},
		complete: function(data) { 
			var result = JSON.parse(data.responseText); 
			var matches = result.menu.filter(function(val, index, array) {
			    return val.slug === string;
			});
			$.each(matches, function(key, val){
				var $sections = val.sections;
	        	$.each($sections, function(k, v){
	        		for ($k; $k < $sections.length; $k++) {
						$.each($sections[$k], function(key, val){	
	        				var $class = val[0]['class'],
	        					$slug = val[0]['slug'],
	        					$title = val[0]['content'][0]['title'],
	        					$text = val[0]['content'][0]['text'], 
	        					$btn = val[0]['content'][0]['btn'],
	        					$imgs = val[0]['content'][0]['imgs'];	

	        					switch(string){
	        						case 'home' :
	        						$ctpl += '<section class="'+ $slug +' '+ ( ($slug == 'banner'||$slug == 'projetos') ? 'animated' : '' ) +'" id="'+ $slug +'">';
				        			$ctpl += '<div class="container">';
					        			if($slug == 'banner'){
									            $ctpl += '<div>';
									              $ctpl += '<h2 class="title">'+ $title +'</h2>';
									              $ctpl += '<p class="description">'+ $text +'</p>';
									              $ctpl += '<a href="'+ $btn[0]['url'] +'" title="" class="btn btn-1">'+ $btn[0]['label'] +'</a>';
									            $ctpl += '</div>';
									            if($imgs){
													$ctpl += '<div data-relative-input="true" data-depth="0.6" id="magnifying_glass" class="webdoor-detail">';
													for ($m; $m < $imgs.length; $m++) {
															$ctpl += '<img src="'+ $imgs[$m]['src'] +'" data-depth="'+ $imgs[$m]['data-depth'] +'" class="'+ $imgs[$m]['class'] +'" />';
										            }
										            $ctpl += '</div>';	
									            }
					        			}
					        			if($slug == 'projetos'){
									            $ctpl += '<h2 class="title">'+ $title +'</h2>';
									            $ctpl += '<p class="description">'+ $text +'</p>';
									            if($imgs){
										            $ctpl += '<div class="screenshots">';
										            for ($n; $n < $imgs.length; $n++) {
											            $ctpl += '  <div>';
											            $ctpl += '    <h3 class="title">'+ $imgs[$n]['title'] +'</h3>';
											            $ctpl += '    <img src="'+ $imgs[$n]['src'] +'" alt="'+ $imgs[$n]['title'] +'" />';
											            $ctpl += '  </div>';
											        }
										            $ctpl += '</div>';
										        }
									            $ctpl += '<a href="'+ $btn[0]['url'] +'" class="btn btn-1">'+ $btn[0]['label'] +'</a>';
					        			}
					        			if($slug == 'comece-agora'){
								            $ctpl += '<div>';
								            $ctpl += '  <h3 class="title">'+ $title +'</h3>';
								            $ctpl += '</div>';
								            $ctpl += '<div>';
								            $ctpl += '  <a href="'+ $btn[0]['url'] +'" class="btn btn-1">'+ $btn[0]['label'] +'</a>';
								            $ctpl += '</div>';
					        			}		    
					        			if($slug == 'branding'){
					        				$ctpl += '<p data-subtitle="'+ $text +'">'+ $title +'</p>';
					        			}     						        			   	
				        			$ctpl += '</div>';
			        				$ctpl += '</section>';
	        						break;
	        						case 'sobre' : 
	        						$ctpl += '<section class="'+ $slug +' '+ ( ($slug == 'banner'||$slug == 'projetos') ? 'animated' : '' ) +'" id="'+ $slug +'">';
				        			$ctpl += '<div class="container">';
					        			if($slug == 'banner'){
									            $ctpl += '<div>';
									              $ctpl += '<h2 class="title">'+ $title +'</h2>';
									              $ctpl += '<p class="description">'+ $text +'</p>';
									            $ctpl += '</div>';
									            if($imgs){
													$ctpl += '<div data-relative-input="true" data-depth="0.6" id="magnifying_glass" class="webdoor-detail">';
													for ($m; $m < $imgs.length; $m++) {
															$ctpl += '<img src="'+ $imgs[$m]['src'] +'" data-depth="'+ $imgs[$m]['data-depth'] +'" class="'+ $imgs[$m]['class'] +'" />';
										            }
										            $ctpl += '</div>';	
									            }
					        			}  						        			   	
				        			$ctpl += '</div>';
			        				$ctpl += '</section>';
	        						break;
	        					}
						});	 
	        		}
	        	}); 	
	        	$content.empty().prepend($ctpl);
			});  
			spinner('none'); 
		},
	  	error: function(errorThrown){
	    	console.log(errorThrown);
	    	console.log('fail');
	  	}
	}); 
}