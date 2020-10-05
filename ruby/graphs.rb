def graph(hash_graph)
    # write your code here
    x = 0
    visited_nodes = [x]
    while x != 4 do
        x = hash_graph[x].shift()
        visited_nodes.push(x)
    end
    visited_nodes
  end
  
  hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
  
  p graph(hash)
  # => [0, 2, 5, 4]