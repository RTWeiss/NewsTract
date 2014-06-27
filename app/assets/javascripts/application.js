// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require_tree .

$(document).on("page:load ready", function() {
  $('.newstract-preview').click(function(event) {
    var isZoomed = $(event.target).closest('.newstract-preview').hasClass('newstract_zoomed');
    $(event.target).closest('.newstract-preview').parent().children('.newstract-preview').removeClass('newstract_zoomed');
    if (!isZoomed) {
      $(event.target).closest('.newstract-preview').addClass('newstract_zoomed');
    }
  });
});