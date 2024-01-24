def range(start, finish)
    return [] if finish == start
    [start] + range(start + 1, finish)
end

# p range(1, 5)

def sum_array(array)
    return 0 if array.length == 0
    first_ele = array.first
    sum_array(array[1..-1]) + first_ele
end

# p sum_array([1, 2, 3, 4])


def exp(b, n) # 2 ^ 3 = 8    2 * (2 * 2) 
    return 1 if n == 0
    b * exp(b, n - 1) 
end

# p exp(2, 3)

def exp2(b, n) # 2, 3
    return b if n == 1
  
    if n.even?
      exp2(b, n / 2) *  exp2(b, n / 2)
    else
      b * exp2(b, (n - 1) / 2) * exp2(b, (n - 1) / 2)
    end
end

# p exp2(2, 6)
# p exp2(3, 3)
# p exp2(2, 256)


class Array
    #   new_arr = []
    #   self.each do |subarr|
    #       new_arr << subarr
    #       end
    #      new_arr 
    def deep_dup
        new_arr = []
            self.each do |ele|
                if ele.is_a?(Array)
                    new_arr << ele.deep_dup
                else
                    new_arr << ele
                end
            end
        new_arr    
    end
end

p [1, [2], [3, [4]]].deep_dup