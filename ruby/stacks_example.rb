class Stack

    def initialize
        @arr = []
    end

    def push(number)
      # your code here
      @arr << number
    end
    
    def pop
      # your code here
      @arr.pop

    end
    
    def min
      # your code here
      @arr.min
    end
  
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  
  stack.pop
  stack.push(7)
  puts stack.min
  # => 3
  
  stack.push(2)
  puts stack.min
  # => 2
  
  stack.pop
  puts stack.min
  # => 3