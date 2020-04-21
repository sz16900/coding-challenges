def getMoneySpent(keyboards, drives, b)
    highest = 0

keyboards.each do |x|
    drives.each do |y|
        if (x + y) > highest &&  (x + y) <= b
            highest = x + y
        end
    end
end

return -1 if highest.zero?
highest

end

puts getMoneySpent([4], [5], 5)
puts getMoneySpent([3,1], [5, 2, 8], 10)