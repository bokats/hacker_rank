def longest_palindrome(s)
  return s if s.length == 1
  i = 0
  j = s.length
  while j - i > 1
    while j <= s.length
      return s[i...j] if is_palindrome?(s[i...j])
      i += 1
      j += 1
    end
    j = j - 1 - i
    i = 0
  end
  s[0]
end

def is_palindrome?(string)
  0.upto((string.length / 2) - 1) do |idx|
    if string[idx] != string[-idx - 1]
      return false
    end
  end
  true
end

p longest_palindrome('abb')
p longest_palindrome('babad')

# import pdb
#
# def longestPalindrome(s):
#     if len(s)==0:
#     	return 0
#     maxLen=1
#     start=0
#     for i in range(len(s)):
#     	if i-maxLen >=1 and s[i-maxLen-1:i+1]==s[i-maxLen-1:i+1][::-1]:
#     		start=i-maxLen-1
#     		maxLen+=2
#     		continue
#
#     	if i-maxLen >=0 and s[i-maxLen:i+1]==s[i-maxLen:i+1][::-1]:
#     		start=i-maxLen
#     		maxLen+=1
#
#         print(i)
#     return s[start:start+maxLen]

# print(longestPalindrome('abcba'))
