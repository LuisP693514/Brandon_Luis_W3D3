

# # Iterative

# def range(start, last)

#     arr = []

#     (start...last).each do |ele|

#         arr << ele

#     end

#     arr

# end


# # Recursive

# def range2(start, last)

#     return [] if start > last - 1

#     [start] + range2(start+1, last)

# end

# p range2(1, 10)


# Exponentiation1

# def exp1(base, exponent)
#     return 1 if exponent == 0
#     base * exp1(base, exponent - 1)
# end

# p exp1(4, 3)


# Exponentiation1

# MAX_STACK_SIZE = 2
# tracer = proc do |event|
#   if event == 'call' && caller_locations.length > MAX_STACK_SIZE
#     fail "Probable Stack Overflow"
#   end
# end
# set_trace_func(tracer)

def exp2(base, exponent)
    return 1 if exponent == 0
    return base if exponent == 1

    if exponent % 2 == 0
        exp2(base, exponent / 2) * exp2(base, exponent / 2)
    else
        base * (exp2(base, (exponent - 1) / 2) * exp2(base, (exponent - 1) / 2))
    end
end

# p exp2(3, 10)


class Array

    def deep_dup    
        arr = []
        self.each do |ele|     
            if ele.is_a?(Array)
                arr << ele.dup.deep_dup 
            else
                arr << ele.dup
            end
        end
        arr 
    end

end

# [1, [2], [3, [4]]]


# recursive

def fib(n)
    # 1,1,2,3,5,8
    return [1,1].take(n) if n <= 2
    return fib(n-1) + fib(n-2)

end

# p fib(0)

def fib2(n)

    return [1,1].take(n) if n < 3

    arr = [1,1]

    (n-2).times { arr << arr[-1] + arr[-2] }

    arr

end

p fib2(100) # [1,1,2,3]

def bsearch(arr, target)           
    return 0 if arr[0] == target
    midpoint = arr.length / 2       
    if arr[midpoint] == target      
        return midpoint
    elsif arr[midpoint] > target  
        return bsearch(arr[0...midpoint], target)
    elsif arr[midpoint] < target
        return midpoint + bsearch(arr[midpoint..target], target)
    end
end

# bsearch([1, 2, 3, 4, 5, 6], 6)


def merge_sort(array)
    return array if array.length <= 1

    
end

def merge(arr1, arr2)
    new_arr = []

    i = 0
    max = [arr1.length, arr2.length].max
    while i < max
        if arr1[i] > arr2[i]
            new_arr << arr1[i]
        end

    new_arr
end