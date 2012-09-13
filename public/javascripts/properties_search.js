$(document).ready(function() {
  $('#property_ra_unique_id').autocomplete({
    source: '/property_management/properties/list',
    minLength: 3
  });
  // when the #property_ra_unique_id field changes
  $('#property_ra_unique_id').blur(function() {
    // make a POST call and replace the content
    console.log("change property");
    //      /property_management/properties/location.json?term=1970000100
    $.get("/property_management/properties/location",{ format: 'json', term: $('#property_ra_unique_id').val()}, function(data) {
      console.log(data);
      $("#property_location_override").val(data);
    });
  });
});

