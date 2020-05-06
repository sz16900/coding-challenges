def anagram(s)
    return -1 if s.length % 2 != 0 
    arr = s.split("").each_slice(s.length / 2).to_a
    first = arr[0].sort { |a, b| a <=> b } 
    second = arr[1].sort { |a, b| a <=> b }
    second.each do |x|
        if first.include?(x)
            first.delete_at(first.index(x))
        end
    end
    return first.length
end

puts anagram("fhakljfhjsksdh")