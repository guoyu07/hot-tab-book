$(document).ready(function(){
  // registration form 
  $(".topTable").fancybox({
          
      });
  // hover table popup
  $(".topTable").hover(function(){
  	$(this).siblings('div').show();
  },function() {
    $(".topTable").siblings('div').hide();
  });
});