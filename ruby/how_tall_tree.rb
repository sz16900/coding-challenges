def height_of_tree(array)
    left = 0
    right = 0
    i = 0
    while i < array.length-1
        left += 1 if array[2*i+1]
        right += 1 if array[2*i+2]
        i += 1
    end
    left >= right ? left : right
end

p height_of_tree([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
