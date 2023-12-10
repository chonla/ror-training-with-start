String name = "sd" # not recommended declaration
name = "sd" # <-- use this

name = 'John\n' # 
name2 = "John\n" # Preferred, favored by style guide

# Double quote contains internal string interpolation
# Double quoted string is now good performance as single quoted

print name
print name2

c = "name: " + name
c = "name: #{name}" # style guid favored
c = format("name: %s", name) # style guid favored

# name is array of char
name[0] # --> "J"
name[-1] # --> "n"
name[-2] # --> "\\"

# Symbol, prefix with :
# object id is not changed
category = [:fruit, :vegetable]

name.length
name.size # interchangeable

:john.size == "john".size

# strip
name.strip

# .empty?
# .include?

# .match
name.match(/j/) # return MatchData
# .gsub -- global substitution
name.gsub(/j/, '') # pattern matching substitution

# HEREDOC
content = <<-CONTENT
Lorem ipsom asd
asdfasd
asdfasd
CONTENT

# HEREDOC can be process in tag
name = "john  "
sql = <<-SQL.strip.gsub(/j/, 'J')
SELEECT * FROM `users` WHERE name = #{name}
SQL

"john,jack".split(",")