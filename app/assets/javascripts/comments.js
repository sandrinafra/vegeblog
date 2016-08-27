document.addEventListener('turbolinks:load', function(){
	$(".display_comment_form").click(function(){
		$(this).next().slideToggle();
	});
});
