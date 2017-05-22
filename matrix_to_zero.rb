require 'set'
require 'byebug'

def set_zeroes(matrix)

  changed = Set.new
  matrix.each_index do |row|
    found_zero = false
    0.upto(matrix[row].length - 1) do |column|
      if matrix[row][column] == 0 && !changed.include?([row, column])
        matrix.each_index do |row_idx|
          if matrix[row_idx][column] != 0
            if row_idx > row
              changed << [row_idx, column]
            end
            matrix[row_idx][column] = 0
          end
        end
        found_zero = true
      end
    end
    if found_zero
      matrix[row] = Array.new(matrix[row].length) { 0 }
    end
  end
end

m = [[0,0,0,5],
     [4,3,1,4],
     [0,1,1,4],
     [1,2,1,3],
     [0,0,1,1]]

set_zeroes(m)
p m
