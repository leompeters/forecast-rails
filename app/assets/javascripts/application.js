//= require jquery3
//= require rails-ujs
//= require turbolinks
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  // Enable Bootstrap Tooltip.
  $('body').tooltip({ selector: '.tooltip,[rel=tooltip],[data-toggle=tooltip]' });
  // Focus on the first visible field of the first form.
  $('form:first input[type!="hidden"]:first').focus();
});
