

# Iterative

def range(start, last)

    arr = []

    (start...last).each do |ele|

        arr << ele

    end

    arr

end


# Recursive

def range2(start, last)

    return [] if start > last - 1

    [start] + range2(start+1, last)

end

# p range2(1, 10)



