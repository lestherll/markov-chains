import numpy as np
from timeit import Timer


def random_walk_for_loop(start, states, n):
    """Random walk using Python for loop"""
    acc = start
    for _ in range(n):
        acc = acc @ states
    return acc

def random_walk_matrix_power(start, states, n):
    """Random walk using matrix power"""
    return start @ np.linalg.matrix_power(states, n)

# starting state
start = np.array([0, 1, 0])
# transition matrix
states = np.array([
    [0.2, 0.6, 0.2],
    [0.3, 0, 0.7],
    [0.5, 0, 0.5]
])
#number of walks
n = 100_000_000

# number of runs
runs = 10000
dur_random_walk_matrix_power = Timer("random_walk_matrix_power(start, states, n)", globals=globals()).timeit(number=runs)
print(f"{random_walk_matrix_power/runs = }")

dur_random_walk_for_loop = Timer("random_walk_for_loop(start, states, n)", globals=globals()).timeit(number=1)
print(f"{dur_random_walk_for_loop = }")
