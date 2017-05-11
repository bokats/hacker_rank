def wiggleMaxLength(nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        # trivial case
        if (len(nums) < 2):
            return len(nums)
        diffs = []
        for i in range(1, len(nums)):
            x = nums[i] - nums[i - 1]
            if (x != 0):
                diffs.append(x)
        if (not diffs):
            return 1

        cnt = 1
        for i in range(1, len(diffs)):
            prod = diffs[i] * diffs[i - 1]
            if (prod < 0):
                cnt += 1

        return cnt + 1

print(wiggleMaxLength([1,17,5,10,13,15,10,5,16,8]))
