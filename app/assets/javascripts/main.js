$(document).ready(function() {
  setInterval(function() {
    jQuery.ajax({
      url: "/items",
      type: "GET",
      dataType: "script"
    });
  }, 2000); // In every 30 seconds
});

$( document ).click(function() {
  setTimeout("$('.alert').fadeOut('slow')", 4000)
});
