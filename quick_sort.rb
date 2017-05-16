def quick_sort(array, start_idx, length = array.length)
  if length < 2
    return array[start_idx...start_idx + length]
  end
  pivot_idx = rand(start_idx..start_idx + length)
  array[start_idx], array[pivot_idx] = array[pivot_idx], array[start_idx]

  divider_idx = start_idx + 1
  (start_idx + 1).upto(length + start_idx - 1) do |idx|
    print array, start_idx, length
    if array[start_idx] > array[idx]
      array[divider_idx], array[idx] = array[idx], array[divider_idx]
      divider_idx += 1
    end
  end
  array[start_idx], array[divider_idx - 1] =
    array[divider_idx - 1], array[start_idx]

  quick_sort(array, 0, divider_idx - 1)
  quick_sort(array, divider_idx, length - divider_idx)
  array
end

p quick_sort([4, 3, 2, 1], 0)
