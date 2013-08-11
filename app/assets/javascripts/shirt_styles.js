$(document).on('ready page:change', function() {
  var shirt_style_index = 1;
  $('#add-more-shirt-style-fields').click(function() {
    var btn = $(this);
    btn.before(btn.data('fields').replace(/__INDEX__/g, shirt_style_index++));
  });
});
