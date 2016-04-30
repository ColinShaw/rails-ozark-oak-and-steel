// Page Preloader
$(window).load(function() { 
	$("#loader").delay(500).fadeOut("slow"); 	
	$(".mask").delay(500).fadeOut("slow");
});

// OnReady
jQuery(document).ready(function($) { 
	'use strict';
	
	// OnePage Navigation
	$('ul.flexnav, a.pippo').onePageNav({
	   	currentClass: 'current',
		changeHash: false,
		easing: 'swing',
		filter: ':not(.external)',
		scrollSpeed: 750,
		scrollOffset: 60,
		scrollThreshold: 0.5,
		begin: false,
		end: false,
		scrollChange: false
	})
	
	// Sticky Header
	$("header").sticky({ topSpacing: 0 });
	
	// Isotope Plugin
	setTimeout(function(){
		var $container = $('.portfolio-container');
	    $container.isotope({
			itemSelector: '.portfolio-item'
		});
	    $('#filters').on('click', 'a', function (event) {
	        var filterValue = $(this).attr('data-filter-value');
	        $container.isotope({
	            filter: filterValue
	        });
	        $('#filters li').removeClass();
	        $(this).parent().addClass('active');
	    });
  	},250);
    
    // JackBox
	$(".jackbox[data-group]").jackBox("init",{
		deepLinking: false,
		showInfoByDefault: true,
		preloadGraphics: false,
		fullscreenScalesContent: true,
		autoplayVideo: true,
		useThumbs: false,
		useThumbTooltips: false,
		thumbsStartHidden: false,
		showPageScrollbar: false,
		useKeyboardControls: true,
		defaultShareImage: "/assets/default_share.jpg"
	});
	
	// Fastclick
	$(function(){
	    FastClick.attach(document.body);
	});
	
	// Sticky Footer
	$(document).ready(function(){
  		$(window).resize(function(){
		    var footerHeight = $('.footer-section').outerHeight();
		    var stickFooterPush = $('.push').height(footerHeight);
	
			$('.main-wrapper').css({'marginBottom':'-' + footerHeight + 'px'});
	    });
		$(window).resize();
    });
	
});

