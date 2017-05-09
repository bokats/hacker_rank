
def bubble_sort(a):
    swap = True
    num_swaps = 0
    while swap:
        swap = False
        for i in range(len(a) - 1):
            if a[i] > a[i + 1]:
                a[i], a[i + 1] = a[i + 1],a[i]
                swap = True
                num_swaps += 1


    return num_swaps, a[0], a[-1]

# Tests

a1 = [3,2,1]
assert bubble_sort(a1) == (3,1,3)

a2 = [1,2,5]
assert bubble_sort(a2) == (0, 1, 5)
