$(document).ready(function() {
  // If the user clicks on a div with class col-md-4...
  $('.newstract-preview').click(function(event) { 
    // Then the next level down element with a class newstract-preview that also has a class newstract_zoomed is assigned to isZoomed,
    // which checks if the element is zoomed in on or not
    var isZoomed = $(event.target).closest('.newstract-preview').hasClass('newstract_zoomed');
    // Then, just in case other elements have been clicked before, we remove the class newstract_zoomed from them
    $(event.target).closest('.newstract-preview').parent().children('.newstract-preview').removeClass('newstract_zoomed');
    // Then, if it has not already been zoomed, add the class newstract_zoomed to the col-md-4
    if(!isZoomed) {
      $(event.target).closest('.newstract-preview').addClass('newstract_zoomed');
    }

  });

});