def hanoi_steps(number_of_discs)
    # your code here
    move_disks(number_of_discs, 1, 2, 3)
end

def move_disks(n, starting, intermidiate, goal)

    if n > 0
        move_disks(n -1, starting, goal, intermidiate)
        puts move_text(starting, goal)
        move_disks(n -1, intermidiate, starting, goal)
    end
end

  # helper function that returns move in string format
def move_text(from, to)
    "#{from}->#{to}"
end
  
  
#   hanoi_steps(2)
  # => 1->2 
  #    1->3 
  #    2->3
  
  hanoi_steps(3)
  # => 1->3 
  #    1->2
  #    3->2
  #    1->3
  #    2->1
  #    2->3
  #    1->3
  
#   hanoi_steps(4)
  # => 1->2
  #    1->3
  #    2->3
  #    1->2
  #    3->1
  #    3->2
  #    1->2
  #    1->3
  #    2->3
  #    2->1
  #    3->1
  #    2->3
  #    1->2
  #    1->3
  #    2->3