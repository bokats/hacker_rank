def min_window(s, t)
  t_hash = {}
  t.each_char do |letter|
    if t_hash.has_key?(letter)
      t_hash[letter] += 1
    else
      t_hash[letter] = 1
    end
  end

  start_idx = nil
  end_idx = nil

  index = 0
  while index < s.length
    if t_hash.has_key?(s[index])
      start_idx = index if !start_idx
      t_hash[s[index]] -= 1
      if t_hash[s[index]] == 0
        t_hash.delete(s[index])
        if t_hash.empty?
          end_idx = index
          break
        end
      end
    end
    index += 1
  end
  if start_idx && end_idx
    s[start_idx..end_idx]
  else
    ""
  end
end

p min_window("ADOBECODEBANC", "ABC")
