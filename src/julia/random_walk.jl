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
    prev = 0
    n = 0
    while π != prev
      prev = π
      π *= states
      n += 1
    end
    return n, π
  end

function get_stationary_state2(start, states)
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
