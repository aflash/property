$(document).ready(function() {
  $.datepicker.setDefaults({
    dateFormat: 'dd/mm/yy',
    showOn: 'button',
    buttonImage: '/property_management/images/calendar.gif',
    duration: 'fast',
    changeMonth: true,
    changeYear: true,
    showOtherMonths: true,
    selectOtherMonths: true
  });

  $('.datepicker').datepicker();

  $('.delete_lease').bind('ajax:success', function() {
    $(this).closest('tr').fadeOut();
  });
});
