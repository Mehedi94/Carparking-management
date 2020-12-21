jQuery(document).ready(function(){
	jQuery("ul li ul").parent().click(function(){
		var sub = jQuery(this).children("ul li ul");

		if(jQuery(sub).is(':hidden')){
			jQuery(sub).slideDown(300);
		}
		else{
			jQuery(sub).slideUp(200);
		}

		

	});
});