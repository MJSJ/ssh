$("#sign_up").on("click",function(){
	$.post("user/ajax_login",$("#sign_up_form").serialize(),function(data){
		
		console.log(data)
	});
	
});


$('#myCarousel').hammer().on('swipeleft', function(){

  $(this).carousel('next');

 });

$('#myCarousel').hammer().on('swiperight', function(){

  $(this).carousel('prev');

 });