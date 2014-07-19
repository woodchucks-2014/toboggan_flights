// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.

//= require turbolinks
//= require jquery

//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function() {

	$('.nav_items').hover(function() {
				$(this).removeClass().addClass('nav_hover');
		}, function(){
				$(this).removeClass().addClass('nav_items');
		}); 

});




// jQuery('#vmap').vectorMap(
// {
//     map: 'world_en',
//     backgroundColor: '#a5bfdd',
//     borderColor: '#818181',
//     borderOpacity: 0.25,
//     borderWidth: 1,
//     color: '#f4f3f0',
//     enableZoom: true,
//     hoverColor: '#c9dfaf',
//     hoverOpacity: null,
//     normalizeFunction: 'linear',
//     scaleColors: ['#b6d6ff', '#005ace'],
//     selectedColor: '#c9dfaf',
//     selectedRegion: null,
//     showTooltip: true,
//     onRegionClick: function(element, code, region)
//     {
//         var message = 'You clicked "'
//             + region 
//             + '" which has the code: '
//             + code.toUpperCase();

//         alert(message);
//     }
// });