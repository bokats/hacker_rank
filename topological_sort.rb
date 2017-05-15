require 'set'

def topological_sort(vertices, edges)
  current_order = vertices.length
  explored = Set.new
  vertices.each do |v|
    DFS(vertices, edges, v, explored, current_order) if !explored.include?(v)
  end
end

def DFS(vertices, edges, start_vertex, explored, current_order)
  explored << start_vertex
  start_vertex.out_edges.each do |edge|
    if !explored.include?(edge.ending_vertex)
      DFS(graph, edge.ending_vertex)
    end
  end
  f[start_vertex] = current_order
  current_order -= 1
end
