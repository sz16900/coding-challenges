class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end
  
  class LinkedList
    #setup head and tail
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
        x = 0
        node = @head
        while x <= @num_of_items do
            return node.value if index == x
            node = node.next_node
            x += 1
        end
    end

    private
    
    def head_tails(node)
        @head = node
        @tail = node
    end
    
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add(6)
  list.add(7)
  list.add(90)
  puts list.get(1)
  puts list.get(2)
  puts list.get(3)
  puts list.get(4)
  puts list.get(5)
  # => 5