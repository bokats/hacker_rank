class Solution(object):
    def firstMissingPositive(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        low = None
        high = None
        missing = None
        for num in nums:
            if num > 0:
                if not low:
                    low = high = num
                    if num != 1:
                        missing = low - 1
                    else:
                        missing = low + 1
                elif not high and high != missing:
                    high = num
                else:
                    if num < low:
                        low = num
                    elif num > high:
                        high = num
