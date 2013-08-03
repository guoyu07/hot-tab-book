$(document).ready(function(){
    var hotel_name = new LiveValidation( 'hotel_name', {validMessage:" ",onlyOnSubmit: true } );
    hotel_name.add( Validate.Presence);
    var hotel_address = new LiveValidation( 'hotel_address', {validMessage:" ",onlyOnSubmit: true } );
    hotel_address.add( Validate.Presence);
    var hotel_city = new LiveValidation( 'hotel_city', {validMessage:" ",onlyOnSubmit: true } );
    hotel_city.add( Validate.Presence);
    var hotel_website =  new LiveValidation( 'hotel_website', {validMessage:" ",onlyOnSubmit: true } );
    hotel_website.add( Validate.Presence);
});