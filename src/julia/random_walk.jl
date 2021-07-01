using BenchmarkTools


# random walk using Julia for loop
function random_walk_for_loop(start, states, n)
    for _ in 1:n
        start *= states
    return start
    end
end

# random walk using matrix power
function random_walk_matrix_power(start, states, n)
    return start * states ^ n
start = [0 1]
end

# random walk until stationary state
# this assumes that there exists a stationary state
function get_stationary_state(start, states)
    π = start
    prev = start
    n = 1
    while true
      π *= states
      if π != prev
        prev = π
      else
        return n, π
      end
      n += 1
    end
  end

# starting state
start = [0 1 0]
# transition matrix
states = [
    0.2 0.6 0.2
    0.3 0.0 0.7
    0.5 0.0 0.5
]
# number of walks
n = 100000000

# @benchmark random_walk_matrix_power(start, states, n)
# @benchmark random_walk_for_loop(start, states, n)
println(get_stationary_state(start, states))
