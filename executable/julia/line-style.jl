using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

trace1 = [
  "x" => [52698, 43117], 
  "y" => [53, 31], 
  "text" => ["United States", "Canada"], 
  "name" => "North America", 
  "mode" => "markers", 
  "marker" => [
    "line" => [
      "color" => "white", 
      "width" => 0.5
    ], 
    "size" => 12, 
    "color" => "rgb(164, 194, 244)"
  ], 
  "type" => "scatter"
]
trace2 = [
  "x" => [39317, 37236, 35650, 30066, 29570, 27159, 23557, 21046, 18007], 
  "y" => [33, 20, 13, 19, 27, 19, 49, 44, 38], 
  "text" => ["Germany", "Britain", "France", "Spain", "Italy", "Czech Rep.", "Greece", "Poland"], 
  "name" => "Europe", 
  "mode" => "markers", 
  "marker" => [
    "line" => [
      "color" => "white", 
      "width" => 0.5
    ], 
    "size" => 12, 
    "color" => "rgb(255, 217, 102)"
  ], 
  "type" => "scatter"
]
trace3 = [
  "x" => [42952, 37037, 33106, 17478, 9813, 5253, 4692, 3899], 
  "y" => [23, 42, 54, 89, 14, 99, 93, 70], 
  "text" => ["Australia", "Japan", "South Korea", "Malaysia", "China", "Indonesia", "Philippines", "India"], 
  "name" => "Asia/Pacific", 
  "mode" => "markers", 
  "marker" => [
    "line" => [
      "color" => "white", 
      "width" => 0.5
    ], 
    "size" => 12, 
    "color" => "rgb(234, 153, 153)"
  ], 
  "type" => "scatter"
]
trace4 = [
  "x" => [19097, 18601, 15595, 13546, 12026, 7434, 5419], 
  "y" => [43, 47, 56, 80, 86, 93, 80], 
  "text" => ["Chile", "Argentina", "Mexico", "Venezuela", "Venezuela", "El Salvador", "Bolivia"], 
  "name" => "Latin America", 
  "mode" => "markers", 
  "marker" => [
    "line" => [
      "color" => "white", 
      "width" => 0.5
    ], 
    "size" => 12, 
    "color" => "rgb(142, 124, 195)"
  ], 
  "type" => "scatter"
]
data = [trace1, trace2, trace3, trace4]
layout = [
  "title" => "Quarter 1 Growth", 
  "xaxis" => [
    "title" => "GDP per Capita", 
    "showgrid" => false, 
    "zeroline" => false
  ], 
  "yaxis" => [
    "title" => "Percent", 
    "showline" => false
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "line-style", "fileopt" => "overwrite"])
plot_url = response["url"]