def connected_graph?(graph)
    stack = [0]
    visited = []
    current = 0
    until stack.empty? do
        current = stack.pop
        visited.push(current)
        graph[current].reverse.each {|item|
            if visited.include?(item) || stack.include?(item)
            else
                stack.push(item)
            end
        }
    end
    visited.length == graph.length
end

puts connected_graph?({
    0 => [2], 
    1 => [4], 
    2 => [0, 5, 3], 
    3 => [5, 2], 
    4 => [5, 1], 
    5 => [4, 2, 3]
  })
  # => true
  
  puts connected_graph?({
    0 => [1, 2], 
    1 => [0, 2], 
    2 => [0, 1, 3, 4, 5], 
    3 => [2, 4], 
    4 => [3, 2], 
    5 => [2]
  })