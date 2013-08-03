$(document).ready(function(){
    $('.hotelList li').hide();
    $('.pune_selected').show();
    $('#country_id').change(function(){
        var selectedCity = $(this).val();
        $('.hotelList li').hide();
        $('.' + selectedCity + '_selected').show();
    });
});