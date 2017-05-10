def update_bits(n, m, i, j):
    max = ~0 # All 1s

    # 1s through position j + 1, then zeroes
    left = max - ((1 << (j + 1)) - 1)

    # 1s after position i
    right = ((1 << i) - 1)

    # 1’s, with 0s between i and j
    mask = left | right

    #  Clear i through j, then put m in there
    return (n & mask) | (m << i)

# def update_bits(n, m, i, j):



print(update_bits(10000000000, 10101, 2, 6))
