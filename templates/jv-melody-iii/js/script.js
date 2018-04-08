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
		// Menu mobile
		var counter = 0,
				menuWrapper = $('.wd_main_menu_wrapper');
		$('.wd_menu_btn').on("click", function(e){
			if( counter == '0') {
				menuWrapper.addClass('wd_main_menu_hide');
				$(this).children().removeAttr('class');
				$(this).children().attr('class','fa fa-close');
				counter++;
			}
			else {
				menuWrapper.removeClass('wd_main_menu_hide');
				$(this).children().removeAttr('class');
				$(this).children().attr('class','fa fa-bars');
				counter--;
			}
		});
		// scroll to id
		var nav = $('.wd_single_index_menu'),
				navLi = $('.wd_single_index_menu li'),
				navLiA = nav.find('li a'),
				headerHeight = 82;

		function jsHome(a){
			return a.text() == 'Home'? true : false;
		}

		function scrollToAnchor (sectionHash) {
			var offTop = Math.round(sectionHash.offset().top);
			$('html,body').animate({scrollTop: offTop - headerHeight}, 600,'swing', function() {
				history.pushState("", document.title, window.location.pathname);
			});
		}
		//Single page scroll js
		navLiA.on('click' , function(e){
			var id = $(this).attr('href');
			href = id.replace('/', '');
			if($(href).length) {
        e.preventDefault();
      }
			navLi.removeClass('active');
			$(this).parent().addClass('active');
			var target = (jsHome($(this)))? $('#site-header') : $(href);
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
						href = (jsHome(currLink))? '#site-header' : currLink.attr('href')
				;
				href = href.replace('/', '');
				if((/^#/.test(href) === true || jsHome(currLink)) && $(href).length) {
					if(scrollPos > 0){
							var refElement = $(href),
								offsetRef = Math.round(refElement.position().top);
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
		//Single page scroll js
		$('[data-scroll]').on('click' , function(e){
		  var target = $($(this).attr('href'));
		  e.preventDefault();
		  scrollToAnchor(target);
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
