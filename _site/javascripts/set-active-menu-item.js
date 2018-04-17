$(document).ready(function() {
  var itemId = 'nav-' + $(document.body).attr('data-itemid');
  $("nav li#" + itemId).addClass('active');
});
