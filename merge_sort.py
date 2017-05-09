swaps = 0

class MergeSort(object):

    def __init__(self):
        self.swaps = 0

    def merge_sort(self, array):
        if len(array) < 2:
            return array

        middle = len(array) // 2
        left = array[0:middle]
        right = array[middle:len(array)]

        left_sorted = self.merge_sort(left)
        right_sorted = self.merge_sort(right)

        return self.merge(left_sorted, right_sorted)

    def merge(self, array1, array2):
        result = []
        i = 0
        j = 0

        while i < len(array1) and j < len(array2):
            if array1[i] <= array2[j]:
                result.append(array1[i])
                i += 1
            else:
                print(array1)
                print(array2)
                result.append(array2[j])
                self.swaps += 1
                j += 1

        while i < len(array1):
            result.append(array1[i])
            i += 1

        while j < len(array2):
            result.append(array2[j])
            j += 1

        return result


# def count_inversions(a):


a1 = [2,1,3,1,2]

m = MergeSort()

print(m.merge_sort(a1))
print(m.swaps)
