# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  # setup head and tail
  def initialize
    @head = nil
    @tail = nil
    @num_of_items = 0
  end

  def add(number)
    node = Node.new(number)
    @num_of_items += 1
    if @head.nil? && @tail.nil?
      head_tails(node)
      return
    end
    if @head.next_node.nil?
      @head.next_node = node
      @tail = node
      return
    end
    copy = @tail
    copy.next_node = node
    @tail = node
  end

  def get(index)
    counter = 0
    node = @head
    while counter <= index
      return node.value if counter == index

      node = node.next_node
      counter += 1
    end
  end

  def add_at(index, item)
    new_node = Node.new(item)
    if @head.nil?
      @head = new_node
    elsif index.zero?
      temp_pointer = @head
      @head = new_node
      new_node.next_node = temp_pointer
      counter = 0
      node = @head
    else
      prev_node = get_node(index - 1)
      temp_pointer = prev_node.next_node
      prev_node.next_node = new_node
      new_node.next_node = temp_pointer
    end
  end

  def remove(index)
    prev_node = get_node(index - 1)
    prev_node.next_node = get_node(index + 1)
      end

  private

  def head_tails(node)
    @head = node
    @tail = node
  end

  def get_node(index)
    counter = 0
    node = @head
    while counter <= index
      return node if counter == index

      node = node.next_node
      counter += 1
    end
      end
end

list = LinkedList.new

list.add(3)
list.add(5)

list.add_at(1, 11)
list.add_at(0, 13)

#   puts list.get(2)
# => 11

#   puts list.get(3)
# => 5

list.remove(2)

(0..2).each { |x| puts list.get(x) }
