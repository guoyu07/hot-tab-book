$(document).ready(function(){
  // registration form 
  $(".topTable").fancybox({
    // onStart     :   function() {
    //     return window.confirm('Continue?');
    // },
    // onCancel    :   function() {
    //     alert('Canceled!');
    // },
    // onComplete  :   function() {
    //     alert('Completed!');
    // },
    // onCleanup   :   function() {
    //     return window.confirm('Close?');
    // },
    // onClosed    :   function() {
    //     alert('Closed!');
    // }
  });
  $(".topTable").click(function(){
  	$('#table_id').val(parseInt($(this).attr('id')));
  });
  // hover table popup
  $(".topTable").hover(function(){
  	$(this).siblings('div').show();
  },function() {
    $(".topTable").siblings('div').hide();
  });

  //datetime picker
  $("#booking_time_slot").datetimepicker({
	  dateFormat: 'yy-mm-dd',
	  altFormat: 'yymmddhhmm',
	  timeFormat: 'hh:mm:ss',
	  stepMinute: 5,
  });
});