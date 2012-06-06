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
					// $('div#translation_area').append(message + "<br/>");
					// alert(message);
					
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

var timeout	= 300;
var closetimer	= 0;
var ddmenuitem	= 0;

// open hidden layer
function mopen(id)
{	
	// cancel close timer
	mcancelclosetime();

	// close old layer
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';

	// get new layer and show it
	ddmenuitem = document.getElementById(id);
	ddmenuitem.style.visibility = 'visible';

}
// close showed layer
function mclose()
{
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}

// go close timer
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}

// cancel close timer
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
	}
}

// close layer when click-out
document.onclick = mclose; 
