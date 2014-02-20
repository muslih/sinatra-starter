$ ->
	sub = $('.submenu')
	kon = sub.siblings('article')
	navtab = sub.children()

	navtab.first().addClass('aktif')
	kon.hide()
	kon.first().show()
	# kalonya di klik
	navtab.on 'click',(event) ->
		$('.kon' + $(@).attr('class')).slideDown()
		$('.kon' + $(@).attr('class')).siblings('article').slideUp()	
		navtab.removeClass('aktif')
		$(@).addClass('aktif')