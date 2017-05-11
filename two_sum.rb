def two_sum(nums, target)
  return false if nums.empty?
  hash = Hash.new
  nums.each_index do |idx|
    if hash.has_key?(target - nums[idx])
      return [hash[target - nums[idx]], idx]
    else
      hash[nums[idx]] = idx
    end
  end
end
