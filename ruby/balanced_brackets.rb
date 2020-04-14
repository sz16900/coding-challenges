def balanced_brackets?(string)
    brackets = {'{' => '}', '(' => ')', '[' => ']'}
    arr = []
    string.each_char do |x|
        arr << x if brackets.include?(x)
        p arr
        if arr[-1] == brackets.key(x)
            return false if arr.pop != brackets.key(x)
        end
    end
    return false if !arr.empty?
    true
end
  
puts balanced_brackets?('(hello)[world]')
#   # => true
  
  puts balanced_brackets?('([)]')
#   # => false
  
  puts balanced_brackets?('[({}{}{})([])]')
#   # => true