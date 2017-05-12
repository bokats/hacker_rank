class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: float
        """
        i = 0
        j = 0
        merged_array = []
        while i < len(nums1) and j < len(nums2):
            if nums1[i] <= nums2[j]:
                merged_array.append(nums1[i])
                i += 1
            else:
                merged_array.append(nums2[j])
                j += 1

        while i < len(nums1):
            merged_array.append(nums1[i])
            i += 1

        while j < len(nums2):
            merged_array.append(nums2[j])
            j += 1

        if len(merged_array) % 2 == 0:
            first_num = merged_array[int(len(merged_array) / 2)]
            second_num = merged_array[int(len(merged_array) / 2) - 1]
            return float(first_num + second_num) / 2
        else:
            return merged_array[len(merged_array) // 2]

a = [1,2]
b = [3,4]

s = Solution()
print(s.findMedianSortedArrays(a,b))
