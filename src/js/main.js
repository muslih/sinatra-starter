(function() {
  $(function() {
    var navsoal, soal;
    navsoal = $('aside>ul.ujian').children('li').children('a');
    soal = $('.soal').children().children('ol').children();
    return navsoal.on('click', function(event) {
      var hsoal;
      navsoal.removeClass('aktif');
      if ($(this).attr('class') === "all") {
        soal.show();
        $('.soal').children('h2').text('Semua soal');
        $('.kon' + $(this).attr('class')).siblings().show();
      } else if ($(this).attr('class') === 'bantu') {
        $('.bantuan').fadeIn();
      } else if ($(this).attr('class') === 'ipa') {
        hsoal = 'IPA';
        $('.soal').children('h2').text('Soal ' + hsoal);
        soal.hide();
        $('.kon' + $(this).attr('class')).show();
      } else if ($(this).attr('class') === 'mtk') {
        hsoal = 'Matematika';
        $('.soal').children('h2').text('Soal ' + hsoal);
        soal.hide();
        $('.kon' + $(this).attr('class')).show();
      } else if ($(this).attr('class') === 'id') {
        hsoal = 'Bahasa Indonesia';
        $('.soal').children('h2').text('Soal ' + hsoal);
        soal.hide();
        $('.kon' + $(this).attr('class')).show();
      } else if ($(this).attr('class') === 'en') {
        hsoal = 'Bahasa Inggris';
        $('.soal').children('h2').text('Soal ' + hsoal);
        soal.hide();
        $('.kon' + $(this).attr('class')).show();
      } else {
        hsoal = Semua;
      }
      return $(this).addClass('aktif');
    });
  });

  $(function() {
    $('.bg_bantuan').on('click', function(event) {
      return $(this).parent().fadeOut();
    });
    return $('.bg_bantuan').on('click', function(event) {
      return $(this).parent().fadeOut();
    });
  });

  $(function() {
    var jumlahsoal, listsoal, soal;
    if (window.location.pathname === '/ujian') {
      $('.sapa').hide();
      $('.countujian').show();
    }
    soal = 0;
    jumlahsoal = $('.soal').find('li').length;
    $('#selesai').hide();
    $('.soal').find('li').on('click', function(event) {
      var IntBs, bs, soaldiisi;
      soaldiisi = $('.soal').find('li :checked').length;
      $('.banyaksoal').text(soaldiisi);
      bs = $('.banyaksoal').text();
      IntBs = parseInt(bs);
      if (IntBs === jumlahsoal) {
        return $('#selesai').show();
      }
    });
    listsoal = $('.soal').children().children('ol').children().children('input');
    $('.all>span').text($('.soal').find('li').length);
    $('.ipa>span').text($('li.konipa').length);
    $('.mtk>span').text($('li.konmtk').length);
    $('.id>span').text($('li.konid').length);
    return $('.en>span').text($('li.konen').length);
  });

  $(function() {
    var url;
    url = window.location.pathname;
    console.log(url);
    return $('.menusamping a').each(function() {
      if ($(this).attr('href') === url) {
        $(this).addClass('aktif');
        $(this).removeAttr('href');
        return $(this).css('cursor', 'pointer');
      } else {
        return $('.menusamping li').first(function() {
          a.addClass('aktif');
          a.removeAttr('href');
          return a.css('cursor', 'pointer');
        });
      }
    });
  });

  $(function() {
    var aside;
    aside = $('aside');
    return $(window).scroll(function() {
      if ($(this).scrollTop() > 96) {
        return aside.addClass('fixaside');
      } else {
        return aside.removeClass('fixaside');
      }
    });
  });

  $(function() {
    var lulus;
    lulus = $('.L').length;
    if (lulus >= 3) {
      return $('.pengumuman').text('LULUS');
    } else {
      return $('.pengumuman').text('TIDAK LULUS');
    }
  });

}).call(this);
