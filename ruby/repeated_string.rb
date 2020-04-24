def repeatedString(s, n)
    if !s.include? "a" 
        return 0
    elsif s.length == 1 && s == 'a'
        return n
    else
        counter = 0
        repeats = s.length % n
        substring =  n -  s.length * repeats 
        substring.times {|x| counter += 1 if s[x] == 'a' }
        counter += s.count('a') * repeats
    end
end

puts repeatedString('aba', 10)