def merge(intervals)

  result = []
  sorted_intervals = intervals.sort_by { |array| array[0] }

  sorted_intervals.each do |subarray|
    if result.empty?
      result << subarray
    elsif subarray[0] <= result[-1][1]
      result[-1][1] = subarray[1]
    else
      result << subarray
    end
  end
  result
end

p merge([[1,3]])
p merge([[1,3], [2,4], [5,8]])
