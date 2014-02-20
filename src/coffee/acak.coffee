(($) ->
  $.fn.shuffle = ->
    allElems = @get()
    getRandom = (max) ->
      Math.floor Math.random() * max
    shuffled = $.map(allElems, ->
      random = getRandom(allElems.length)
      randEl = $(allElems[random]).clone(true)[0]
      allElems.splice random, 1
      randEl
    )
    # acak pulang mang
    @each (i) ->
      $(this).replaceWith $(shuffled[i])
      return
    $ shuffled
  return
) jQuery
# acak soalnya
$ ->
	$(".soal ol li").shuffle()