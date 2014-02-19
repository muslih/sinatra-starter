(function() {
  $(function() {
    var url;
    url = window.location.pathname;
    console.log(url);
    return $('nav a').each(function() {
      if ($(this).attr('href') === url) {
        return $(this).addClass('active');
      } else {
        return $('#nav li').first(function() {
          return a.addClass('active');
        });
      }
    });
  });

  $(function() {
    $('.popupakses').hide();
    $('.popupsyarat').hide();
    $('#mailinput').hide();
    $('#setuju').hide();
    $('#generate').hide();
    $('.cgenerate').click(function() {
      return $('#generate').slideToggle();
    });
    $('#req').click(function() {
      return $('#mailinput').slideToggle();
    });
    $('#pernyataan').click(function() {
      return $('#setuju').slideToggle(500);
    });
    $('.caraAkses').click(function() {
      $('body').css('overflow', 'hidden');
      return $('.popupakses').fadeIn(500);
    });
    $('.popupakses').click(function() {
      $(this).fadeOut(500);
      return $('body').css('overflow', 'auto');
    });
    $('.syaratKetentuan').click(function() {
      $('body').css('overflow', 'hidden');
      return $('.popupsyarat').fadeIn(500);
    });
    $('.popupsyarat').click(function() {
      $(this).fadeOut(500);
      return $('body').css('overflow', 'auto');
    });
    return $('.exit').click(function() {
      $(this).parents('div').fadeOut(500);
      return $('body').css('overflow', 'auto');
    });
  });

}).call(this);
