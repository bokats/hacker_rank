require 'set'
class TopologicalSort
  def initialize(vertices)
    @vertices = vertices
    @explored = Set.new
    @current_order = vertices.length
  end

  def find_topological_sort
    @vertices.each do |v|
      topological_sort_helper(v) if !@explored.include?(v)
    end
  end

  def topological_sort_helper(start_vertex)
    @explored << start_vertex
    start_vertex.out_edges.each do |edge|
      if !@explored.include?(edge.ending_vertex)
        topological_sort_helper(edge.ending_vertex)
      end
    end
    f[start_vertex] = @current_order
    @current_order -= 1
  end
end
