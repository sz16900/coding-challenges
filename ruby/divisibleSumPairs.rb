def divisibleSumPairs(n, k, ar)
counter = 0
iter = 0
while iter < ar.length
    (iter+1...n).each do |x|
        if (ar[x] + ar[iter]) % k == 0
            counter += 1
        end

    end
    iter+= 1
end
counter
end

divisibleSumPairs(6,3,[1,3,1,6,1,2])