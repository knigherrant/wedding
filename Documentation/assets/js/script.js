jQuery(function($) {
	var nav = $(".block-mainnav"),
		responsive = nav.data('responsive');
	$(window).on("resize", function () {
		if ( JVMenu.getViewport("x") < responsive) {
			nav.insertBefore( "#mainsite" );
			$('#block-mainnav-mobile').onePageNav({
			 	currentClass: 'active'
			 });
		}
		else{        
			$("#block-header .block-mainnav-wapper").append(nav);
		}
	}).trigger("resize");
	$(window).on("load", function () {
		$(window).trigger("resize");
	});
	$("#block-header").headroom({
		"offset": 1,
		"tolerance": 5
	});

	$('#block-mainnav').onePageNav({
	 	currentClass: 'active'
	 });

	$('.image-modal').each(function(){
		var el = $(this);
			el.magnificPopup({
			type: 'image',
			mainClass: 'my-mfp-zoom-in',
			
		});
	});
	$('.link-modal').each(function(){
		var el = $(this);
			el.magnificPopup({
			type: 'iframe',
			mainClass: 'my-mfp-zoom-in',
			removalDelay: 160
		});
	});

	$('.popup-modal').each(function(){
		var el = $(this);
		el.magnificPopup({
			type: 'inline',
			preloader: false,
			mainClass: 'my-mfp-zoom-in',
			removalDelay: 160
		});
	});
	$('.gallery-inner').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-1').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-2').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-3').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-4').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-5').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-6').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-7').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-8').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-9').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-10').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-11').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-12').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-13').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-14').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-15').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-16').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-17').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-18').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-19').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-20').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-21').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});
	$('.gallery-inner-22').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-23').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-24').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-25').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-26').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-27').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-28').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-29').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-30').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-31').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-32').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-33').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-34').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-35').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('.gallery-inner-36').magnificPopup({delegate: 'a',type: 'image',tLoading: 'Loading image #%curr%...',mainClass: 'my-mfp-zoom-in mfp-img-mobile',gallery: {enabled: true,navigateByImgClick: true,preload: [0,1] },image: {tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',}});	
	$('[data-toggle="tooltip"]').tooltip();
	$('.scrollTo').bind("click", function(e){
		e.preventDefault();
	       var target = $(this).attr("href");
	       $('html,body').animate(
		   {
		       scrollTop: $(target).offset().top
		   },1000);
	});	

	$(document).ready(function() {
	  $('.high code').each(function(i, block) {
	    hljs.highlightBlock(block);
	  });
	});	 
	function OsParallax() {
        $(window).stellar({
            scrollProperty: 'scroll',
            positionProperty: 'transform',
            horizontalScrolling: false,
            verticalScrolling:true,
            responsive: true,
            parallaxBackgrounds: true
        });
    }   

    $(window).on("resize load", function () {
		OsParallax();		
	})
});

jQuery(function($) {
	
	$('.demomenu').each(function() {
		var el = $(this);
		el.find('.btn-demomenu').click(function(){
			el.addClass('show');
		})
		el.find('.btn-hiddenDemo').click(function(){
			el.removeClass('show');
		})
	});
	var offset = 220;
	$(window).scroll(function() {
		if ($(this).scrollTop() > offset) {
			$('.backtotop').addClass("open");
		} else {
			$('.backtotop').removeClass("open");
		}
	});

	// Carousel ============================
	$(".carouselOwl").each(function(){ 

		var el = $(this),

			items = 			(el.data('items') != "")?parseInt(el.data('items')):5,
	        itemsCustom = 		(el.data('itemscustom') != "")?el.data('itemscustom'):true,
	        itemsDesktop = 		(el.data('itemsdesktop') != "")?parseInt(el.data('itemsdesktop')):4,
	        itemsDesktopSmall = (el.data('itemsdesktopsmall') != "")?parseInt(el.data('itemsdesktopsmall')):4,
	        itemsTablet = 		(el.data('itemstablet') != "")?parseInt(el.data('itemstablet')):2,
	        itemsTabletSmall = 	(el.data('itemstabletsmall') != "")?parseInt(el.data('itemstabletsmall')):2,
	        itemsMobile = 		(el.data('itemsmobile') != "")?parseInt(el.data('itemsmobile')):1,
	        singleItem = 		(el.data('singleitem') != "")?el.data('singleitem'):false,
	        
	        slideSpeed = 		(el.data('slidespeed') != "")?el.data('slidespeed'):200,
	        paginationSpeed = 	(el.data('paginationspeed') != "")?el.data('paginationspeed'):800,
	        rewindSpeed = 		(el.data('rewindspeed') != "")?el.data('rewindspeed'):1000,

	        autoPlay = 			(el.data('autoplay') != "")?el.data('autoplay'):false,
	        stopOnHover = 		(el.data('stoponhover') != "")?el.data('stoponhover'):false,

	        navigation = 		(el.data('navigation') != "")?el.data('navigation'):false,
	        navigationText = 	["<i class=\"fa fa-angle-left\"></i>","<i class=\"fa fa-angle-right\"></i>"],
	        rewindNav = 		(el.data('rewindnav') != "")?el.data('rewindnav'):true,
	        scrollPerPage = 	(el.data('scrollperpage') != "")?el.data('scrollperpage'):false,

	        pagination = 		(el.data('pagination') == "") ? el.data('pagination') : true,
	        paginationNumbers = (el.data('paginationnumbers') != "")?el.data('paginationnumbers'):false,
	        transitionStyle = (el.data('transition') != "")?el.data('transition'):false,
	        addClassActive = (el.data('addactive') != "")?el.data('addactive'):false;

	    el.imagesLoaded(function(){
			el.owlCarousel({
				direction: $("body").hasClass("rtl") ? 'rtl' : 'ltr',
				items : items,
		        itemsCustom : itemsCustom,
		        itemsDesktop : [1199, itemsDesktop],
		        itemsDesktopSmall : [991, itemsDesktopSmall],	        
		        itemsTablet : [768, itemsTablet],
		        itemsTabletSmall : [560, itemsTabletSmall],
		        itemsMobile : [479, itemsMobile],
		        singleItem : singleItem,

		        slideSpeed : slideSpeed,
		        paginationSpeed : paginationSpeed,
		        rewindSpeed : rewindSpeed,

		        autoPlay : autoPlay,
		        stopOnHover : stopOnHover,

		        navigation : navigation,
		        navigationText : navigationText,
		        rewindNav : rewindNav,
		        scrollPerPage : scrollPerPage,

		        pagination : pagination,
		        paginationNumbers : paginationNumbers,

		        addClassActive: addClassActive,
		        transitionStyle : transitionStyle
			});
		});
	});
});