def staircase(n)
    arr = Array.new(n, " ")   
    n.times do |x|
        arr[n-x] = "#"
        puts arr.join("")
    end
end

staircase(6)