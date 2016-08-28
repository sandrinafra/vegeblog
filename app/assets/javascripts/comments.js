document.addEventListener('turbolinks:load', function() {

	$(".display_comment_form").click(function() {
		$(this).prev().css("display", "none");
		$(this).next().css("display", "block");
		$(this).css("display", "none");
	});
});
