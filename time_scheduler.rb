def time_scheduler(array)
    events = (0...array.length).step(2).collect { |index| [array[index], array[index+1]] }
    events.sort_by! { |event| event[1] }
    result = [events[0]]
    for i in 1...events.length
      result << events[i] unless overlap?(result[-1], events[i])
    end
  
    # result
    p array
    p events
  end
  
  def overlap?(event1, event2)
    event1[1] > event2[0]
  end
  
time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])