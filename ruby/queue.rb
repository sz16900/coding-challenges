class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end
  
class LinkedList
    attr_accessor :head
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
            prev_node = get_node(index -1)
            temp_pointer = prev_node.next_node
            prev_node.next_node = new_node
            new_node.next_node = temp_pointer
        end
    end

    def remove(index)
        prev_node = get_node(index -1)
        prev_node.next_node = get_node(index + 1)
    end

    def pop_queue
        if @num_of_items.zero?
            @head = nil
            @tail = nil
            @num_of_items = 0
            return -1
        else
            temp_node = get_node(1)
            head = @head
            @head = temp_node
            @num_of_items -= 1
            if @num_of_items.zero?
                @head = nil
                @tail = nil
                @num_of_items = 0
            end
            return head.value
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


class Queue

    def initialize
        @list = LinkedList.new
    end

    def add(number)
      # your code here
      @list.add(number)
    end
    
    def remove
      # your code here
      return @list.pop_queue
    end
end

  
queue = Queue.new

queue.add(3)
puts queue.remove
queue.add(5)
queue.add(7)

puts queue.remove

puts queue.remove