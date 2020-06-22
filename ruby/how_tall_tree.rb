def height_of_tree(array)
    sum = array[0]
    indxl = 0
    indxr = 0
    left = []
    right = []
    while indxl <= array.length-1 || indxr <= array.length-1
        indxl = (2*indxl)+1
        indxr = (2*indxr)+2
        left << indxl
        right << indxr
    end
    left.length >= right.length ? left.length : right.length
end

puts height_of_tree([2, 7, 5, 2, 6, 0, 9])
