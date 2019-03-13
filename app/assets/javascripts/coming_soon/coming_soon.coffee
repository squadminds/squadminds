
$(window).load ->
  'use strict'
  setTimeout (->
    $('#loading').addClass('animated-middle slideOutUp').removeClass 'opacity-0'
    return
  ), 1000
  setTimeout (->
    setTimeout (->
      $('.text-intro').each (i) ->
        ((self) ->
          setTimeout (->
            $(self).addClass('animated-middle fadeInUp').removeClass 'opacity-0'
            return
          ), i * 150 + 150
          return
        ) this
        return
      return
    ), 0
    return
  ), 1000
  return


equalheight = (container) ->
  currentTallest = 0
  currentRowStart = 0
  rowDivs = new Array
  $el = undefined
  topPosition = 0
  $(container).each ->
    $el = $(this)
    $($el).height 'auto'
    topPostion = $el.position().top
    if currentRowStart != topPostion
      currentDiv = 0
      while currentDiv < rowDivs.length
        rowDivs[currentDiv].height currentTallest
        currentDiv++
      rowDivs.length = 0
      # empty the array
      currentRowStart = topPostion
      currentTallest = $el.height()
      rowDivs.push $el
    else
      rowDivs.push $el
      currentTallest = if currentTallest < $el.height() then $el.height() else currentTallest
    currentDiv = 0
    while currentDiv < rowDivs.length
      rowDivs[currentDiv].height currentTallest
      currentDiv++
    return
  return

$(window).load ->
  equalheight '.equalizer'
  return
$(window).resize ->
  equalheight '.equalizer'
  return


onMobile = false
if /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)
  onMobile = true
if onMobile == false
  $(window).scroll ->
    scroll = $(window).scrollTop()
    fastScroll = -scroll / 4
    $('.parallax-div').css transform: 'translate3d( 0, ' + fastScroll + 'px, 0) scale3d( 1, 1, 1 )'
    target = $('.parallax-div')
    targetHeight = target.outerHeight()
    scrollPercent = (targetHeight - (window.scrollY)) / targetHeight
    if scrollPercent >= 0
      target.css 'opacity', scrollPercent
    return
else
$(document).ready ->
  'use strict'
  $('#notifyMe').notifyMe()
  $root = $('html, body')
  $('a').click ->
    $root.animate { scrollTop: $($.attr(this, 'href')).offset().top }, 1200, 'easeInOutCubic'
    false
  return