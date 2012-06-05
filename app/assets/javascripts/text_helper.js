// $('.translate').click(function(){
$(document).ready(function(){
	$('span.translate').click(function(){
		// Get id
		var word_id = parseInt($(this).attr('id').split("_")[1]);
		
		// Get word
		var word_en = $(this).html();
		
		// //debug
		// alert("word_id => " + word_id.toString());
		
		$.getJSON("/trans/main",
				// {word_id: 2},
				{word_id: word_id},
				function(data) {
					// alert("response => " + data.jp)
					// Build message
					var message = word_en + " => " + data.jp;
					
					// Show message
					$('div#translation_area').html(message + "<br/>");
					
				}
		);
		
	    // $('#translation_area').innerHTML = "translation_area";
	    // $('#translation_area').html("translation_area");
	    // $('div#translation_area').html("translation_area");
	    // alert("Hello");
	    
	    // $.ajax({
	    	// type: "GET",
	    	// // url: "trans/main?word_id=2",
	    	// // url: "/trans/main?word_id=2",
	    	// url: "/trans/main",
	    	// // data: {word_id: 2},
	    	// // data: {word_id: 3},
	    	// data: {word_id: 1},
	    	// success: function(data, dataType) {
	    		// $('div#translation_area').html(data);
	    	// },
	    	// // data: 
	    	// error: function(XMLHttpRequest, textStatus, errorThrown) {
	    		// $('div#translation_area').html("Error! => " + errorThrown);
	    	// }
	    // });//$.ajax({
	    
	});
});
	