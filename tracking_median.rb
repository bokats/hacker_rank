class Node
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

class MinHeap
  def initialize
    @store = []
  end

  def insert(node)
    @store << node
    heapify_up
  end

  def extract
    @store[0], @store[@store.length - 1] =
      @store[@store.length - 1], @store[0]
    min_node = @store.pop
    heapify_down
    min_node
  end

  def peek
    @store[0].value
  end

  def heapify_up
    current_idx = @store.length - 1
    parent_idx = parent(current_idx)

    while !parent_idx.nil? &&
      @store[current_idx].value < @store[parent_idx].value

      @store[current_idx], @store[parent_idx] =
        @store[parent_idx], @store[current_idx]

      current_idx = parent_idx
      parent_idx = parent(current_idx)
    end
  end

  def heapify_down
    current_idx = 0
    swap = true
    while swap
      children_idx = children(current_idx)
      highest_idx = current_idx
      swap = false
      children_idx.each do |child_idx|
        if @store[child_idx].value < @store[highest_idx].value
          highest_idx = child_idx
          swap = true
        end
      end

      if swap
        @store[current_idx], @store[highest_idx] =
          @store[highest_idx], @store[current_idx]
        current_idx = highest_idx
      end
    end
  end

  def parent(index)
    return (index - 1) / 2 if index > 0
    nil
  end

  def children(index)
    result = []
    first_child = (index / 2) + 1
    second_child = (index / 2) + 2
    result << first_child if first_child < @store.length
    result << second_child if second_child < @store.length
    result
  end
end

class MaxHeap
  def initialize
    @store = []
  end

  def insert(node)
    @store << node
    heapify_up
  end

  def peek
    @store[0].value
  end

  def extract
    @store[0], @store[@store.length - 1] =
      @store[@store.length - 1], @store[0]
    min_node = @store.pop
    heapify_down
    min_node
  end

  def heapify_up
    current_idx = @store.length - 1
    parent_idx = parent(current_idx)

    while !parent_idx.nil? &&
      @store[current_idx].value > @store[parent_idx].value

      @store[current_idx], @store[parent_idx] =
        @store[parent_idx], @store[current_idx]

      current_idx = parent_idx
      parent_idx = parent(current_idx)
    end
  end

  def heapify_down
    current_idx = 0
    swap = true
    while swap
      children_idx = children(current_idx)
      highest_idx = current_idx
      swap = false
      children_idx.each do |child_idx|
        if @store[child_idx].value > @store[highest_idx].value
          highest_idx = child_idx
          swap = true
        end
      end

      if swap
        @store[current_idx], @store[highest_idx] =
          @store[highest_idx], @store[current_idx]
        current_idx = highest_idx
      end
    end
  end

  def parent(index)
    return (index - 1) / 2 if index > 0
    nil
  end

  def children(index)
    result = []
    first_child = (index / 2) + 1
    second_child = (index / 2) + 2
    result << first_child if first_child < @store.length
    result << second_child if second_child < @store.length
    result
  end
end

class TrackMedian
  attr_reader :min_heap, :max_heap

  def initialize
    @min_heap = MinHeap.new
    @max_heap = MaxHeap.new
    @min_heap_length = 0
    @max_heap_length = 0
    @median = nil
    @even = true
  end

  def insert(number)
    new_node = Node.new(number)
    @even = !@even
    if @max_heap_length == 0 && @max_heap_length == 0
      @max_heap.insert(new_node)
      @max_heap_length += 1
      @median = number
    elsif number < @median
      @max_heap.insert(new_node)
      @max_heap_length += 1
    else
      @min_heap.insert(new_node)
      @min_heap_length += 1
    end
    calculate_median

  end

  def calculate_median
    size_difference = @min_heap_length - @max_heap_length
    if size_difference > 1
      @max_heap.insert(@min_heap.extract)
    end

  end

end

# n1 = Node.new(1)
# n2 = Node.new(2)
# n3 = Node.new(3)
#
# max = MaxHeap.new
#
# max.insert(n1)
# max.insert(n2)
# max.insert(n3)
#
# p max.extract
