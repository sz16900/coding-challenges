# frozen_string_literal: true

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i = 0)
  # use your function from the previous challenge
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def search_tree?(array, node = nil, min = nil, max = nil)
  node = array_to_tree(array) unless array.nil?
  return true if node.nil?
  return false if min && node.data < min
  return false if max && node.data > max

  search_tree?(array = nil, node.left, min, node.data) && search_tree?(array = nil, node.right, node.data, max)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
