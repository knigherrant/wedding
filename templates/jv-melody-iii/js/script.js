(function($){
	$(document).ready(function(){
		$('ul.vertical li.parent').each(function(){
			 var
				p = $(this),
				btn = $('<span>',{'class':'showsubmenu icon-arrow-down10', text : '' }).click(function(){
					if(p.hasClass('parent-showsub')){
						menu.slideUp(300,function(){
							p.removeClass('parent-showsub');
							btn.addClass('icon-arrow-down10').removeClass('icon-arrow-up9');
						});
					}else{
						menu.slideDown(300,function(){
							p.addClass('parent-showsub');
							btn.removeClass('icon-arrow-down10').addClass('icon-arrow-up9');
						});
					};
				}),
				menu = p.children('div.divsubmenu')
			 ;
			 p.prepend(btn)  // append : trong - duoi, prepend : trong - tren, after : duoi, before : tren
		});
		// Magnific Popup js
		$('.popup-gallery').magnificPopup({
			delegate: '.ast_glr_overlay a',
			type: 'image',
			tLoading: 'Loading image #%curr%...',
			mainClass: 'mfp-img-mobile',
			gallery: {
				enabled: true,
				navigateByImgClick: true,
				preload: [0,1] // Will preload 0 - before current, and 1 after the current image
			},
			image: {
				tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
				titleSrc: function(item) {
					return item.el.attr('title') + '<small></small>';
				}
			}
		});
	});
})(jQuery);
