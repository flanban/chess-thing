d3.json 'https://ebemunk.github.io/chess-dataviz/data/wrc.json', (err, data) ->
  heatmapExample2 = new (ChessDataViz.HeatMap)('#heatmap-example-2', {
    colorScale: [
      'cyan'
      'gold'
    ]
    sizeScale: false
    accessor:
      color: 'w'
      piece: 'q'
  }, data.heatmaps.checkSquares)
  tip = d3.tip().attr('class', 'd3-tip').offset([
    25
    -6
  ]).html((d) ->
    d
  )
  heatmapExample2.dispatch.on 'mouseenter', tip.show
  heatmapExample2.dispatch.on 'mouseleave', tip.hide
  heatmapExample2.dataContainer.call tip
  wButton = d3.select('#w-btn')
  bButton = d3.select('#b-btn')
  wButton.on 'click', ->
    heatmapExample2.options accessor:
      color: 'w'
      piece: 'q'
    wButton.classed 'button-primary', true
    bButton.classed 'button-primary', false
    return
  bButton.on 'click', ->
    heatmapExample2.options accessor:
      color: 'b'
      piece: 'q'
    wButton.classed 'button-primary', false
    bButton.classed 'button-primary', true
    return
  return
