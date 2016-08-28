document.addEventListener('turbolinks:load', function(){

	$(".animate").mouseenter(function(event){
		$(this).addClass("animated pulse");
	});
	$(".animate").on("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationEnd", function(event) {
        $(this).removeClass("animated pulse");
      });
});
