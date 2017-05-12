class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        seen_letters = set([])
        current_substring = ''
        length_of_longest = 0
        for letter in s:
            if letter not in seen_letters:
                current_substring += letter
                seen_letters.add(letter)
            else:
                if len(current_substring) > length_of_longest:
                    length_of_longest = len(current_substring)

                existing_letter_idx = current_substring.index(letter)
                for idx in range(existing_letter_idx):
                    if current_substring[idx] in seen_letters:
                        seen_letters.remove(current_substring[idx])
                current_substring = current_substring[existing_letter_idx + 1:] + letter
        if len(current_substring) > length_of_longest:
            length_of_longest = len(current_substring)
        return length_of_longest

s = Solution()
print(s.lengthOfLongestSubstring('ohomm'))

# Better Solution
# class Solution:
#     # @return an integer
#     def lengthOfLongestSubstring(self, s):
#         start = maxLength = 0
#         usedChar = {}
#
#         for i in range(len(s)):
#             if s[i] in usedChar and start <= usedChar[s[i]]:
#                 start = usedChar[s[i]] + 1
#             else:
#                 maxLength = max(maxLength, i - start + 1)
#
#             usedChar[s[i]] = i
#
#         return maxLength
#
