

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

p exp2(3, 10)


class Array

    def deep_dup

        arr = []

        self.each do |ele|

            if ele.is_a?(Array)

                ele.deep_dup

            else

                arr << ele.dup

            end

        end

    end

end

# [1, 
#  [2], 
#  [3, [4]]
#   ]

