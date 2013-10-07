// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	$(".product-image-gallery .photo").click(function(e){
	  e.preventDefault();
	  var link = $(this).attr("href");
	  $(".product-image-preview img").attr("src", link);
	  $(".product-image-preview a").attr("for", $(this).attr("id"));
	});

	$(".product-image-preview a").click(function(e){
	  e.preventDefault();
	  if($("#photos_container").length != 0){
	    var el = $(this).attr("for");
	    $('#photos_container a').lightBox({overlayOpacity: 0.3});
	    $('#photos_container a#'+el).click();
	  }else{
	    $(".product-image-preview a").lightBox({overlayOpacity: 0.3});
	    $(".product-image-preview a").click();
	  }
	});
});

// function setCookie(name,value, days) {
// 	if (days) {
// 		var date = new Date();
// 		date.setTime(date.getTime()+(days*24*60*60*1000));
// 		var expires = "; expires="+date.toGMTString();
// 	}
// 	else var expires = "";
// 	document.cookie = name+"="+value+expires+"; path=/";
// 	return true;
// }
