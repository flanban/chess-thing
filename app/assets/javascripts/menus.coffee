$(document).mousemove (event) ->
  # pageCoords = "( " + event.pageX + ", " + event.pageY + " )"
  offsetPageHeight = $(window).height() - 150
  offsetPageWidth = $(window).width() - 300
  # top & bottom menus
  if event.pageY < 60 && $(window).width()>=769
    $(".menu-top").addClass "showing-top"
  else if event.pageY > offsetPageHeight && $(window).width()>=769
    $(".menu-bottom").addClass "showing-bottom"
  else
    $(".menu-bottom").removeClass "showing-bottom"
    $(".menu-top").removeClass "showing-top"
  # left & right menus
  if event.clientX < 250 && $(window).width() > 569
    $(".menu-left").addClass "showing-left"
  else if event.clientX > offsetPageWidth && $(window).width()>=769
    $(".menu-right").addClass "showing-right"
  else
    $(".menu-right").removeClass "showing-right"
    $(".menu-left").removeClass "showing-left"
  return