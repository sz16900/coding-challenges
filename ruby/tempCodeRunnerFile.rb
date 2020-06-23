def hash_table(arr)
    # write your code here
    times = {}
    arr.each do |x|
        mods =  abs(x) % 11
        (times[mods] ||= []) << x
    end
    times = times.sort_by { |key| key }.to_h
    newarr = []
    times.each do |k,v|
        newarr.concat(v)
    end
    newarr
  end