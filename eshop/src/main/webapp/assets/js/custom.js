$(function(){
	switch(menu){
		case 'All products':
			//alert("ccsce");
			$('#products a').addClass('active');
			$('#a_'+menu).addClass('active');
			break;
		case 'About Us':
			$('#about a').addClass('active');
			break;
		case 'Get in touch with Us':
			$('#contact a').addClass('active');
			break;
		default:
			$('#home a').addClass('active');
			break;
	}
});

$('.hero__categories__all').on('click', function() {
	$('#caret-down-cat').toggleClass("bi-caret-up bi-caret-down");
	$('.hero__categories ul').slideToggle(400);
});