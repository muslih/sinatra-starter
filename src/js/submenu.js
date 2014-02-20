(function() {
  $(function() {
    var kon, navtab, sub;
    sub = $('.submenu');
    kon = sub.siblings('article');
    navtab = sub.children();
    navtab.first().addClass('aktif');
    kon.hide();
    kon.first().show();
    return navtab.on('click', function(event) {
      $('.kon' + $(this).attr('class')).slideDown();
      $('.kon' + $(this).attr('class')).siblings('article').slideUp();
      navtab.removeClass('aktif');
      return $(this).addClass('aktif');
    });
  });

}).call(this);
