# Hash or Dictionaries Definition
ex_hash = {
    'a' => 1,
    'b' => 2,
    'c' => 3
}

puts ex_hash['c']
puts ex_hash

another_hash = {
    any: 14,
    body: 15,
    can: "code"
}

puts another_hash
puts another_hash[:body]

# Iteration
ex_hash.each do
    |key,value|
    puts "Key #{key} has value #{value} in the hash"
    puts "Class of key is #{key.class} and value is of class #{value.class}"
end
puts

another_hash.each do
    |key,value|
    puts "Key #{key} has value #{value} in the hash"
    puts "Class of key is #{key.class} and value is of class #{value.class}"
end

# Adding and Deleting from Hash
another_hash["Coding"] = "WOW"
puts another_hash
puts another_hash.select{|key,value| value.is_a?(String)}

ex_hash["Try"] = "Nice"
ex_hash.delete('b')
puts ex_hash