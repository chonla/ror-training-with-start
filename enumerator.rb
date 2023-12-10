# Enumerable

arr = [1,2,3,4]
h = {
    name: "john",
    age: 18
}

# .each

arr.each { |i| puts i }
arr.each do |i|
    puts i
end

h.each { |k, v| puts k; puts v }
h.each do |k, v|
    puts k
    puts v
end

# if is not block in ruby
# if true
#    tmp = "3"
# end
# tmp ... <-- tmp is available

# map
arr.map {|i| i*2}
h.map do |k, v|
    {k => v}
end

# reduce
arr.map{|i| i*2}
    .reduce{|sum, i| sum + i}
h.map do |k, v|
    {k => v}
end.reduce(&:merge)

"john,jack".split(",").map{|name|{name:name}}

.include?
.any?
.all?

[1,2,3,nil].all?{|i| !i.nil?}
[1,2,3,nil].any?{|i| !i.nil?}
[1,2,3,nil].include?(1)
