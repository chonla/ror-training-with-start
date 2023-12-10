h = {}
h[:name] = "john"
h[:age] = 18

h.keys # return array
h.values # return array

h.key?:name # true, contains key "name"?
h.key?"name" # false, contains string name?

h["name"] = "jack"

address = "address"
h[:"#{address}"] = "123, asdfjasd"