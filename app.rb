# rbenv-vars --> Auto import env
# brew install rbenv-vars

name = "John"

# IRB -> Interactive RuBy -> Ruby console
# irb
# ruby app.rb
# irb -r app.rb // irb with required file
# irb -r *.rb

# Variables
# Global
$redis_conn = Redis.new

# Class variable
@@count = 1 # banned from style guide

# Instance variable --> Variable in instance
@name = "J"

# Local, block
name = "j"

# Everything in ruby is object
"J".object_id # chaged every time

n = "J"
n.object_id # not changed

# others objects
true.object_id
nil.object_id

# Manual garbage collector
GC.start