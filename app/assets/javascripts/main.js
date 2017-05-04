

$(document).ready(function () {

  $('#std').on('change', function (e) {
    if( this.selectedOptions[0].text !== 'Choose Student' ) {
      $('#student-name').html( this.selectedOptions[0].text );
      $('#student-menu-name').show();
    } else {
      $('#student-menu-name').hide();
    }
  });



});
