$(function(){
	switch(menu){
		case 'about':
			$('#products').addClass('active');
			break;
		case 'about':
			$('#contact').addClass('active');
			break;
		case 'contact':
			$('#contact').addClass('active');
			break;
		default:
			$('#home').addClass('active');
			break;
	}
});