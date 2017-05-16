class Solution(object):
    def permute(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        result = []
        for i in range(len(nums)):
            remaining_nums = nums[:i] + nums[i+1:]
            for j in range(len(remaining_nums) - 1:-1:-1):
                result.append(nums[i] + remaining_nums[j:] + remaining_nums[:j])
