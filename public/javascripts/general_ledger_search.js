$(document).ready(function() {
  $('#property_gl_unique_id').autocomplete({
    source: '/property_management/properties/gl_list',
    minLength: 1
  });
});

