# Complete the palindromeIndex function below.
def palindromeIndex(s)
    str = s.downcase.split("")
    return -1 if str.reverse == str
    lgnth = str.length
    (0...lgnth).each do |x|
        y = str[x]
        str.delete_at(x)
        return x if str.reverse == str
        str.insert(x, y)
    end
    return -1
end


puts palindromeIndex("aaaab")