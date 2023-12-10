# is ruby file started with class reserved?

class Person
    # reserved method but can be overridden
    def initialize(name:)
        @name = name
    end

    # attribute reader
    # attr_reader :name

    # equivalent
    # def name
    #     @name
    # end

    #attribute writer
    # attr_writer :name
    # def name=(val)
    #     @name=val
    # end

    # shorthand for 
    # attr_reader :name
    # attr_writer :name
    attr_accessor :name

    protected

    def display_name
        "position: #{prefixed}"
    end

    private
    
    def prefixed
        "Mr. #{name}"
    end
end

class Employer < Person
end

# DSL - domain specific language -> X, some people do not use this
# PORO - plain old ruby object

john = Employer.new(name: "John")
john.name = "jack"
puts john.name
#puts john,prefixed # error
#puts john.display_name # error

# safe operand
john = nil
puts john&.lastname # like ? in typescript