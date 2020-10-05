def depth_first_search(graph)
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
    visited
end

  
  p depth_first_search({
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  })
  # => [0, 2, 5, 4, 1, 3]