
$(document).ready(function() {

  $(document).keyup(function(e) {
      if (e.keyCode == 70 ) {
          $('#submit-status form').toggle(500);
      }
  });
});

