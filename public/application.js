

$(document).ready(function() {
  $(document).keyup(function(e) {
      if (e.keyCode == 70 ) {

        var url = "http://www.youtube.com/watch?v=UGS8re8cIVI&feature=fvst&autoplay=1";
        var formattedURL = url.replace(new RegExp("watch\\?v=", "i"), 'v/');

  $.fancybox({
      'padding'   : 0,
      'autoScale'   : false,
      'transitionIn'  : 'none',
      'transitionOut' : 'none',
      'autoplay': true,
      'title'     : this.title,
      'width'   : 680,
      'height'    : 495,
      'href'      : formattedURL,
      'type'      : 'swf',
      'swf'     : {
           'wmode'    : 'transparent',
        'allowfullscreen' : 'true'
      }
    });

  return false;




      }
  });
});





// $('#submit-status form').toggle(500);