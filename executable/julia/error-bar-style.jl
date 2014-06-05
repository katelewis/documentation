using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

x_theo = linspace(-4, 4, 100)
sincx = sinc(x_theo)
x = [-3.8, -3.03, -1.91, -1.46, -0.89, -0.24, -0.0, 0.41, 0.89, 1.01, 1.91, 2.28, 2.79, 3.56]
y = [-0.02, 0.04, -0.01, -0.27, 0.36, 0.75, 1.03, 0.65, 0.28, 0.02, -0.11, 0.16, 0.04, -0.15]

trace1 = [
  "x" => x_theo, 
  "y" => sincx, 
  "name" => "sinc(x)", 
  "type" => "scatter"
]
trace2 = [
  "x" => x, 
  "y" => y, 
  "name" => "measured", 
  "mode" => "markers", 
  "marker" => [
    "size" => 8, 
    "color" => "#85144B"
  ], 
  "error_y" => [
    "value" => 0.1, 
    "type" => "constant", 
    "color" => "#85144B", 
    "opacity" => 1, 
    "thickness" => 1.5, 
    "width" => 3
  ], 
  "error_x" => [
    "value" => 0.2, 
    "type" => "constant", 
    "color" => "#85144B", 
    "opacity" => 1, 
    "thickness" => 1.5, 
    "width" => 3
  ], 
  "type" => "scatter"
]
data = [trace1, trace2]

response = Plotly.plot([data], ["filename" => "error-bar-style", "fileopt" => "overwrite"])
plot_url = response["url"]