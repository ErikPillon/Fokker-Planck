function randomWalkLoop(start::Number,
                        walkLength::Integer,
                        distribution::Distribution,
                        stepTransformation::Function,
                        valueTransformation::Function)

    walk = [start; zeros(walkLength - 1)]

    for ii=2:length(walk)
        walk[ii] = valueTransformation(
            walk[ii-1] +
            stepTransformation(rand(distribution)))
    end

    return walk
end;


srand(0)
count_walk_three = randomWalkLoop(0, 100, DiscreteUniform(-3, 3), identity, x -> max(0, x));

draw(SVG(16cm, 8cm), plot(x=1:length(count_walk_three), y=count_walk_three, Geom.line))
