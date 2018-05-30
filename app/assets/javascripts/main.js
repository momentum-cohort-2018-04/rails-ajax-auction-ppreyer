$(document).ready(function() {
  setInterval(function() {
    jQuery.ajax({
      url: "/items",
      type: "GET",
      dataType: "script"
    });
  }, 2000);
});

$(document).click(function() {
  setTimeout("$('.alert').fadeOut('slow')", 4000)
});
