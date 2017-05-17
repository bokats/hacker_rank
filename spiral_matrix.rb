def spiral_order(matrix)
  result = []
  return result if matrix.empty?
  while true

    result += matrix.shift

    if matrix.empty?
      break
    else
      matrix.each_index do |row|
        result << matrix[row].pop
      end
    end

    if matrix.empty? || matrix.include?([])
      break
    else
      result += matrix.pop.reverse
    end

    if matrix.empty?
      break
    else
      last_row = matrix.length - 1
      last_row.downto(0) do |row|
        result << matrix[row].shift
      end
    end

    break if matrix.empty? || matrix.include?([])
  end
  result
end

m = [[1,11],[2,12],[3,13],[4,14],[5,15],[6,16],[7,17],[8,18],[9,19],[10,20]]

p spiral_order(m)
