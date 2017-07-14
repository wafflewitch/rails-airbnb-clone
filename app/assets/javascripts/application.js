//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require_tree .

$(document).ready(function(){
//   $(".form-edit").prop('disabled', true);

// $( ".edit-button-profile" ).click(function() {
//   $( ".form-edit").prop('disabled', false ).click();
// });

$('#datepicker input').datepicker({ weekStart: 1, todayHighlight: true });


// $(".save-button-profile").css({'display' : 'none'});
// $(".cancel-button-profile").css({'display' : 'none'});


// $( ".edit-button-profile" ).click(function() {
//   $( ".save-button-profile" ).show('disable', false ).click();
//   $( ".cancel-button-profile" ).show('disable', false ).click();
//   $( ".edit-button-profile" ).hide('disable', false ).click();
// });

});


