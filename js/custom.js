jQuery(document).ready(function(){

	




	jQuery(window).resize(function(){
		var myWidth = jQuery(window).width();

		if(myWidth <768){
			jQuery(".main-menu ul").hide();
			jQuery(".hidden-menu").show();

			

		}
		else{
			jQuery(".main-menu ul").show();
			
			
		}


	});


	jQuery(".hidden-menu a").click(function(){
				jQuery(".main-menu ul").toggle(1000);
			});


	


});