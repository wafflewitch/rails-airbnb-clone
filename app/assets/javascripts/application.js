




//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(".form-control").prop('disabled', true);

$( ".edit-button-profile" ).click(function() {
  $( ".form-control").prop('disabled', false ).click();
});




$(".save-button-profile").css({'display' : 'none'});
$(".cancel-button-profile").css({'display' : 'none'});


$( ".edit-button-profile" ).click(function() {
  $( ".save-button-profile" ).show('disable', false ).click();
  $( ".cancel-button-profile" ).show('disable', false ).click();
  $( ".edit-button-profile" ).hide('disable', false ).click();
});



