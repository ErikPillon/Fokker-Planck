using Plotly
using Distributions


N = 1000
TRIALS = 10000
MU = 0
SIGMA = 1

data = Matrix(0,0)


for i = 1:TRIALS
    mu1 = MU
    mu2 = MU
    for j = 1:N
        mu1 = rand(Normal(mu1, SIGMA))
        mu2 = rand(Normal(mu2, SIGMA))
    end
    data = [data; [mu1,mu2]']
end

data = [
  [
    "x" => data(:,1),
    "y" => data(:,2),
    "type" => "histogram2d"
  ]
]

figure()
title("Shifting Normals Marginal Distribution")
plot(data)
