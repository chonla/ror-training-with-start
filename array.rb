arr = []
arr = Array.new # not favored by style guide

arr = Array.new(3, 0) # allowed by style guide, [0, 0, 0], (dimension, default value)

arr = [1,2,3,4]
arr.first # arr[0]
arr.first(2) # [1,2]
arr.last # arr[-1]
arr.last(2) # [3,4]

[1,2] + [3,4] # [1,2,3,4]
[1,2,3] - [1,2] # [3]
[1,2] | [2,3] # union [1,2,3]
[1,2] & [2,3] # intersection [2]

arr.push(5) # push element into array, MUTATE!!
arr << 5 # push element into array, MUTATE!!
arr.push(6,7,8) # multiple push, not favored by style guide

arr.pop # pop element from array, MUTATE!!
arr.pop(2) # pop n element from array, MUTATE!!

arr.sort
arr.reverse
arr.length, arr.size

arr.join # join elements of array and return as string => "1234"
arr.join(",") # => "1,2,3,4"
arr.join(" ") # => "1 2 3 4"

numbers = Set.new

# Set element is unique
numbers << 1
numbers << 1
numbers << 2
numbers.to_a # [1, 2]

numbers.include?(1)