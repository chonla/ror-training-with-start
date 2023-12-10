Person = Struct.new :name, :age do
    def display_name
        "Mr. #{name}"
    end
end

john = Person.new("John", 18)
jack = Person.new(name: "Jack", age: 18)

puts john.display_name
puts jack.display_name

# struct comparison on values
# object comparison on object id

class Person;end
p1 = Person.new
p2 = Person.new
p1 == p2 # false

User = Struct.new(:x)
u1 = User.new(1)
u2 = User.new(1)
u1 == u2 # true

# OpenStruct, dynamic struct like hash, low performance, discouraged