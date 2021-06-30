using BenchmarkTools


function random_walk_for_loop(start, states, n)
    for _ in 1:n
        start *= states
    return start
    end
end

function random_walk_matrix_power(start, states, n)
    return start * states ^ n
start = [0 1]
end

start = [0 1 0]
states = [
    0.2 0.6 0.2
    0.3 0.0 0.7
    0.5 0.0 0.5
]

@benchmark random_walk_matrix_power(start, states, 100000000)