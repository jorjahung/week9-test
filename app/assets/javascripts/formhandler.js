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


// $(function () {
//   var form = $('#ajax-form form');
//     form.submit(function(event) {
//       var data = form.serialize();
//       $.post(form.attr('action'), data);
//       event.preventDefault();
//       console.log(data);   
//   });
// });

$(function() {
  var form = $('#sign-in-form form');
  form.submit(function(event) {
    $.ajax({
      url: form.attr('action'),
      method: 'POST',
      data: form.serialize(),
      success: function() {
        location.href = "/"
      },
      error: function() { 
        $('#sign-in-form').prepend("Cannot authenticate.");
      }
    });
    event.preventDefault();
  });
});

