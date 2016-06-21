$("#sign_up").on("click",function(){
	$.post("user/ajax_login",$("#sign_up_form").serialize(),function(data){
		
		console.log(data)
	});
	
});