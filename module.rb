module Greetable
    attr_accessor :name
    def hello(other_name)
        puts "#{name} said: hello, #{other_name}"
    end
end

module ComputerCompany
    class Person
        include Greetable
    end
end

# for

# - namespace
john = ComputerCompany::Person.new
john.name = "John"
# - mixin
john.hello("jack"
# John said: hello, jack