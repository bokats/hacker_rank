def search(array, start, end, target):
    while start <= end:
        middle = (start + end) // 2
        if target == array[middle]:
            return middle
        elif array[start] <= array[middle]:
            if target > array[middle]:
                start = middle + 1
            elif target >= array[start]:
                end = middle - 1
            else:
                start = middle + 1
        elif target < array[middle]:
            end = middle - 1
        elif target <= array[end]:
            start = middle + 1
        else:
            end = middle -1

    return -1

def initial_search(array, target):
    return search(array, 0, len(array) - 1, target)

print(initial_search([15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14], 15))
