# Enter your procedural solution here!

# If we list all of the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples_lucas
    num_sum = 0
    num_range = (1..999).to_a
    num_range.each {|n| n % 3 == 0 || n % 5 == 0 ? num_sum += n : nil }
    num_sum
end

def collect_multiples(limit)
    num_range = (1..limit-1).to_a
    num_range.select {|num| num % 3 == 0 || num % 5 == 0 }
end

def sum_multiples(limit)
    collect_multiples(limit).reduce(0, :+)
end