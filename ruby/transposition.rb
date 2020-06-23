# frozen_string_literal: true

def transpose(str)
  # your code here
  cnt = 0
  while cnt < str.length
    if str[cnt] == 'g' && str[cnt + 1] == 'n'
      str[cnt], str[cnt + 1] = str[cnt + 1], str[cnt]
      cnt = 0
    end
    cnt += 1
  end
  str.to_s
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg

str = 'gngngnnggnngggnnn'
str = str.split('')
