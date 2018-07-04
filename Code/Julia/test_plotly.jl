using Plotly

x = randn(500)
y = randn(500)+1


data = [
  [
    "x" => x,
    "y" => y,
    "type" => "histogram2d"
  ]
]
response = Plotly.plot(data, ["filename" => "2d-histogram", "fileopt" => "overwrite"])
plot_url = response["url"]
