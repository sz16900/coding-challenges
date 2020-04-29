def fibonnacci(n)
    puts n
    return 0 if n.zero? 
    return 1 if n == 1
    return fibonnacci(n-1) + fibonnacci(n-2)
end

puts fibonnacci(5)

# def f (n)
#     n < 2 ? n : f(n-1) + f(n-2)
# end 

# puts f(6)