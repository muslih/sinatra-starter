$ ->
	navsoal = $('aside>ul.ujian').children('li').children('a')
	soal = $('.soal').children().children('ol').children()
	navsoal.on 'click', (event) ->
		navsoal.removeClass('aktif')
		
		
		if $(@).attr('class') is "all"
			soal.show()
			$('.soal').children('h2').text('Semua soal')
			$('.kon' + $(@).attr('class')).siblings().show()
		else if $(@).attr('class') is 'bantu'
			$('.bantuan').fadeIn()
		else if $(@).attr('class') is'ipa'
			hsoal = 'IPA'
			$('.soal').children('h2').text('Soal ' + hsoal )
			soal.hide()
			$('.kon' + $(@).attr('class')).show()
		else if $(@).attr('class') is 'mtk'
			hsoal = 'Matematika'
			$('.soal').children('h2').text('Soal ' + hsoal )
			soal.hide()
			$('.kon' + $(@).attr('class')).show()
		else if $(@).attr('class') is 'id'
			hsoal = 'Bahasa Indonesia'
			$('.soal').children('h2').text('Soal ' + hsoal )
			soal.hide()
			$('.kon' + $(@).attr('class')).show()
		else if $(@).attr('class') is 'en'
			hsoal = 'Bahasa Inggris'
			$('.soal').children('h2').text('Soal ' + hsoal )
			soal.hide()
			$('.kon' + $(@).attr('class')).show()

		else 
			hsoal = Semua

		$(@).addClass('aktif')

$ ->
	$('.bg_bantuan').on 'click', (event) ->
		$(@).parent().fadeOut()
	$('.bg_bantuan').on 'click', (event) ->
		$(@).parent().fadeOut()

$ ->
	if window.location.pathname is '/ujian'
		$('.sapa').hide()
		$('.countujian').show()
	# soal = $('.banyaksoal').text()

	soal = 0
	
	# $('.banyaksoal').text("sempak" + soaldiisi)
	jumlahsoal = $('.soal').find('li').length

	
	$('#selesai').hide()
	$('.soal').find('li').on 'click',(event) ->
		soaldiisi = $('.soal').find('li :checked').length
		$('.banyaksoal').text(soaldiisi)

		bs = $('.banyaksoal').text()
		IntBs = parseInt(bs)
		
		if  IntBs == jumlahsoal 
			 $('#selesai').show()


	listsoal = $('.soal').children().children('ol').children().children('input')

	$('.all>span').text($('.soal').find('li').length)
	$('.ipa>span').text($('li.konipa').length)
	$('.mtk>span').text($('li.konmtk').length)
	$('.id>span').text($('li.konid').length)
	$('.en>span').text($('li.konen').length)

$ ->
	url = window.location.pathname
	console.log(url)
	$('.menusamping a').each ->
		if $(@).attr('href') == url
			$(@).addClass('aktif')
			$(@).removeAttr('href')
			$(@).css('cursor','pointer')
		else
			$('.menusamping li').first ->
				a.addClass('aktif')
				a.removeAttr('href')
				a.css('cursor','pointer')

$ ->
	# head = $('header')
	aside = $('aside')

	$(window).scroll( -> 
		if $(@).scrollTop() > 96
			# $('header').hide()
			# logo.show()
			aside.addClass('fixaside')
		else
			# $('header').show()
			# logo.hide()
			aside.removeClass('fixaside')
	)

$ ->
	lulus = $('.L').length

	if lulus >= 3
		$('.pengumuman').text('LULUS')
	else 
		$('.pengumuman').text('TIDAK LULUS')

