Pkg.add("Plots")
Pkg.add("PyPlot") # Install a different backend
using Plots

plotly() # Choose the Plotly.jl backend for web interactivity
plot(rand(5,5),linewidth=2,title="My Plot1")

pyplot() # Switch to using the PyPlot.jl backend
plot(rand(5,5),linewidth=2,title="My Plot2") # The same plotting command works
