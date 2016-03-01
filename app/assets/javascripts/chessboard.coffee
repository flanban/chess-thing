$(document).ready ->
  i = 0
  while i < 64
    document.getElementById('mainChessBoard').appendChild(document.createElement('div')).classList.add if parseInt(i / 8 + i) % 2 == 0 then 'light' else 'dark'
    i++
  return
