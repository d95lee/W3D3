def range(start, finish)
    new_arr = []
    return [] if finish < start
    new_arr << start 
    range(start + 1, finish)
end

p range(1, 4)