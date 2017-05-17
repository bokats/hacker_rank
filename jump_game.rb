def can_jump(nums)
  return false if nums.empty?
  index_stack = [0]
  while !index_stack.empty?
    current_index = index_stack[-1]
    return true if current_index == nums.length - 1
    current_num = nums[index_stack.pop]
    index = 0
    while index <= current_num
      index_stack << current_index + index
      index += 1
    end
  end
  false
end

a = [2,3,1,1,4]
b = [3,2,1,0,4]

p can_jump(a)
p can_jump(b)
