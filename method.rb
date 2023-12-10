def sum(a, b)
    return a.nil? || b.nil? # not last return, remain return
    a + b  # if return is last, remove keyword return
end

def sum2(a, b)
    if a.nil? || b.nil?
        reeturn 0
    end

    a + b
end

def sum3(a=0, b=0)
    a + b
end

# keyword arguments
def sum4(a:, b:)
    puts "a: #{a}"
    puts "b: #{b}"
    a + b
end
sum4
sum4 a: 3
sum4 b: 2
sum4 a: 3, b: 2

def sum5(*args)
    args.each do |arg|
        puts arg
    end
end
sum5({name: "john", age: 14})

def sum6(**args)
    args.each do |k, v|
        puts k
    end
end
sum6(name: "john", age: 14)

def valid?
    return true
end


# try catch
begin # try
    a + b
rescue # catch
    puts 'error'
ensure # finaly
    puts "finally"
end

# styleguide encourages converting begin-rescue-ensure to method
def sum7(a, b)
    a + b
rescue NameError # specify error is optional
    puts "error"
end
sum7 3,nil