module Greetable
    attr_accessor :name
    def hello(other_name)
        puts "#{name} said: hello, #{other_name}"
    end
end
