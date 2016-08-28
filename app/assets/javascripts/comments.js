document.addEventListener('turbolinks:load', function(){

	$(".display_comment_form").click(function(){
		$(this).next().css("display", "bloc")
		$(this).prev().css("display", "none")
		$(this).css("display", "none")
	});
});
