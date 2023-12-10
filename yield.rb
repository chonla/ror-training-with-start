def greet
    yield
end

def greet_twice
    yield
    yield
end

def greet_people
    yield "john"
    yield "jack"
end

greet { puts "hello" }
greet_twice { puts "hello again" }
greet_people { |name| puts "hello, #{name}" }