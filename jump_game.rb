# require 'set'
#
# def can_jump(nums)
#
#   return false if nums.empty?
#   stack = [[0, nums[0]]]
#   seen_indeces = Set.new
#   while !stack.empty?
#     current_index = stack[-1][0]
#     current_num = stack[-1][1]
#
#     if current_index + current_num >= nums.length - 1
#       return true
#     end
#
#     if current_num == 0
#       stack.pop
#       next
#     elsif !seen_indeces.include?(current_index + current_num)
#       stack[-1][1] -= 1
#       stack << [current_index + current_num, nums[current_index + current_num]]
#       seen_indeces << current_index + current_num
#     else
#       stack[-1][1] -= 1
#     end
#   end
#   false
# end

a = [2, 0, 6, 9, 8, 4, 5, 0, 8, 9, 1, 2, 9, 6, 8, 8, 0, 6, 3, 1, 2, 2, 1, 2, 6, 5, 3, 1, 2, 2, 6, 4, 2, 4, 3, 0, 0, 0, 3, 8, 2, 4, 0, 1, 2, 0, 1, 4, 6, 5, 8, 0, 7, 9, 3, 4, 6, 6, 5, 8, 9, 3, 4, 3, 7, 0, 4, 9, 0, 9, 8, 4, 3, 0, 7, 7, 1, 9, 1, 9, 4, 9, 0, 1, 9, 5, 7, 7, 1, 5, 8, 2, 8, 2, 6, 8, 2, 2, 7, 5, 1, 7, 9, 6]
p can_jump(a)
# p can_jump(b)

# def canJump(self, nums):
#     m = 0
#     for i, n in enumerate(nums):
#         if i > m:
#             return False
#         m = max(m, i+n)
#     return True

def can_jump(nums)
  m = 0
  nums.each_with_index do |num, idx|
    if idx > m
      return false
    end
    m = [m, idx + num].max
  end
  true
end
