def bfs(graph)
    # write your code here
    queue = [0]
    x = 0
    visited_array = []
    until queue.empty? do
        x = queue.shift()
        visited_array.push(x)
        graph[x].each {|item| 
            if visited_array.include?(item) || queue.include?(item)
            else
                queue.push(item)
            end
        }
    end
    visited_array
  end
  
  p bfs({0=>[1, 2], 1=>[0, 2], 2=>[0, 1, 3, 4, 5], 3=>[2, 4], 4=>[3, 2], 5=>[2]})
  # => [0, 1, 2, 3, 4, 5]