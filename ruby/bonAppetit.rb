def bonAppetit(bill, k, b)
    anaOwes = (bill.inject(:+) - bill[k]) / 2
    if anaOwes != b
        puts (bill.inject(:+) / 2) - anaOwes
    else
        puts "Bon Appetit"
    end
end

bonAppetit([4, 1], [3, 10, 2, 9], 12)