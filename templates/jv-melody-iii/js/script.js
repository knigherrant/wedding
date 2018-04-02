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
			 p.prepend(btn) ;
		});
		// scroll to id
		var nav = $('.wd_single_index_menu'),
				navLi = $('.wd_single_index_menu li'),
				navLiA = nav.find('li a'),
				headerHeight = 82;

		function scrollToAnchor (sectionHash) {
	    var offTop = Math.round(sectionHash.offset().top);
	    $('html,body').animate({scrollTop: offTop - headerHeight}, 600,'swing', function() {
	      history.pushState("", document.title, window.location.pathname);
	    });
	  }
		//Single page scroll js
		navLiA.on('click' , function(e){
			e.preventDefault();
		  navLi.removeClass('active');
		  $(this).parent().addClass('active');
		  var target = $($(this).attr('href'));
		  scrollToAnchor(target);
		});

		$(window).on('scroll',  function() {
                    // fixed menu
                    var window_top = $(window).scrollTop() + 1;
                    if (window_top > 500) {
                            $('.wd_header_wrapper').addClass('menu_fixed animated fadeInDown');
                    } else {
                            $('.wd_header_wrapper').removeClass('menu_fixed animated fadeInDown');
                    }
                    // active menu section
                    var scrollPos = Math.round($(document).scrollTop());
                    navLi.each(function () {
                        var currLink = $(this).children('a'),
                            isHome = (currLink.text() == 'Home')? true : false,
                            href = (isHome)? '#site-header' : currLink.attr('href')
                        ;
                        if(/^#/.test(href) === true || isHome) {
                            if(scrollPos > 0){
                                var refElement = $(href),
                                   offsetRef = Math.round(refElement.position().top)
                                ;
                                if (offsetRef <= (scrollPos + headerHeight) /*&& Math.round(offsetRef + refElement.innerHeight()) > scrollPos*/ ) {
                                    navLi.removeClass("active");
                                    currLink.parent('li').addClass("active");
                                }
                            } else{
                                currLink.parent('li').removeClass("active");
                                navLi.first().addClass('active');
                            }
                        }
                    });
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
