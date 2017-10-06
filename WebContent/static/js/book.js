/**
 * 
 */
 $(function(){
 	$(".book .down").bind('mouseover',function(){
 		//$(this).find('.focus-show').show();
 		//$(this).find('.down').addClass("mouseon");
 		$(this).addClass("mouseon");
 		$(this).next().show();
 	});

 

 	$(".book .focus-show").bind('mouseout',function(){
 		//$(this).find('.focus-show').hide();
 		//$(this).find('.down').removeClass("mouseon");
 		$(this).hide();
 		$(this).prev().removeClass("mouseon");
 	});

 	$('.up').bind('click',function(){
 		$(this).next().show();
 		$(this).next().next().show();

 	});
 	
 	$('.up').bind('mouseover',function(){
 		$(this).css('color','red');
 		
 	});
 	
 	$('.up').bind('mouseout',function(){
 		$(this).css('color','black');
 	});

 	$('.box').bind('click',function(event){
 		$(this).hide();
 		$(this).next().hide();
 		//event.stopPropagation();
 		
 	});

 	
})


 