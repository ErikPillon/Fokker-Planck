using Plots
pyplot()

using Distributions


N = 1000
TRIALS = 10000
MU = 0
SIGMA = 1

data = Matrix(0,2)


for i = 1:TRIALS
    mu1 = MU
    mu2 = MU
    for j = 1:N
        mu1 = rand(Normal(mu1, SIGMA))
        mu2 = rand(Normal(mu2, SIGMA))
    end
    data = [data; [mu1,mu2]']
end

f = histogram2d(data[1:end,1],data[1:end,2],nbins=50,title="2D distriubution of a random walk")
savefig("rw.png")
