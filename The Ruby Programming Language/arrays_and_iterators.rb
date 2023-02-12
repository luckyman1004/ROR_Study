# Array Definition
arr = [3,1,5,-3,-56,1,10,27,104,-47]
p arr

# Using Range
x = 5..97
p x
puts x.class

p x.to_a

p x.to_a.shuffle

y = (10..50).to_a.shuffle
p y

y.reverse!
p y

z = ("a".."z").to_a
p z
p z.length

# Other array methods
p arr.methods           # Other available methods

puts y.first

arr.unshift("Anirudh")
p arr

arr.append("Anirudh")
p arr

arr.append("Jain")
arr.append("Rahul")
arr.unshift("Jain")
arr.shuffle!
p arr

arr.uniq!
p arr

puts arr.empty?
b = []
puts b.empty?

puts arr.include?("Rohit")
puts arr.include?("Anirudh")

arr.push("HELLO")
p arr

puts arr.pop
p arr

puts arr.join
puts arr.join(",")

arrNew = arr.join(" - ")
p arrNew

arrNew = arrNew.split(" - ")
p arrNew

# Iterating
for i in arrNew
    p arrNew
end

for i in arrNew
    print i + " "
end
puts

arrNew.each {|num| print num + " "}
puts

p y.select{|val| val.odd?}