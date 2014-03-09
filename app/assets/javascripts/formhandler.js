$(function() {
  $('#sign-in, #sign-up').click(function(event) {
    $.get($(this).attr('href'), function(data) {
      if ($("#ajax-form").length==0) {
        $("#menu").after("<div id='ajax-form'></div>");
      }
      $('#ajax-form').html(data);
    });
    event.preventDefault();
  });
});

