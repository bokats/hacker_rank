class Stack
  attr_reader :store

  def initialize(capacity)
    @capacity = capacity
    @store = [[]]
    @current_stack = 0
  end

  def push(el)
    if @store[@current_stack].length == @capacity
      @store << []
      @current_stack += 1
    end
    @store[@current_stack] << el
  end

  def pop
    result = @store[@current_stack].pop
    if @store[@current_stack].empty?
      @store.pop
      @current_stack -= 1
    end
    result
  end
end

# Tests

# s = Stack.new(2)
# s.push(1)
# s.push(2)
# s.push(3)
#
# p s.store.length == 2
# p s.store[1] == [3]
# p s.store[0] == [1, 2]
#
# s.pop
# p s.store.length == 1
