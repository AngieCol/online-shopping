
/*
var selector = '.nav li';
$(selector).on('click', function(){
    $(selector).removeClass('active');
    $(this).addClass('active');
});*/
/* video part 2 -07 active menu problem*/AbortController
$(document).ready(function() {
	//solving the active menu
	
	switch(menu){
				
		case 'About Us':
			$('#about').addClass('active');
			break;
		case 'Contact Us':
			$('#contact').addClass('active');
			break;
			
		case 'All Products':
			$('#listProducts').addClass('active');
			break;
		default:
			$('#listProducts').addClass('active');
			$('#a_'+menu).addClass('active');
			break;
	}
	
	
	
	
});

/*

$(".nav a").on("click", function(){
   $(".nav li").removeClass("active");
   $(this).parent().addClass("active");
});*/

/*

$(document).ready(function() {
  
  $('ul.navbar-nav > li').click(function(e) {
    e.preventDefault();
    $('ul.navbar-nav > li').removeClass('active');
    $(this).addClass('active');
  });
});*/