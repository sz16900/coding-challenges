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
  attr_accessor :tail, :num_of_items, :head
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

    elsif @head.next_node.nil?
      @head.next_node = node
      @tail = node

    else
      copy = @tail
      copy.next_node = node
      @tail = node
    end
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

  def pop
    popped = @tail
    # puts "Here #{@tail.value}"
    # Another one goes here

    if @num_of_items == 1
      @head = nil
      @tail = nil
      @num_of_items = 0
      popped
    else
      last_node = get_node(@num_of_items - 1)
      @num_of_items -= 1
      if @num_of_items == 1
        @tail = @head
        return last_node
      else
        @tail = last_node
      end
      popped
    end
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

class Stack
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.add(number)
  end

  def pop
    @list.pop.value
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
stack.push(10)
puts stack.pop
puts stack.pop
puts stack.pop
