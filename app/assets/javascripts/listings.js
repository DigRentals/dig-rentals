
$(document).ready(function() {
	
	//Set up the thumbnail loading for the big page
	$(".thumbnail").click(function(event){
      event.preventDefault();
	
	  $("#main-image-container").empty();
   	  $("#main-image-container").append("<img alt='Main Picture' src=" + $(this).attr('href')  + ">");

	  $(".selected").removeClass('selected');
	  $(this).addClass('selected');
	});
	
});

