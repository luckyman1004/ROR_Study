# Definition
def multiply(first, second)
    first.to_f * second.to_f             # automatically return last statement
end

def add(first, second)
    first.to_f + second.to_f
end

def subtract(first, second)
    first.to_f - second.to_f
end

def divide(first, second)
    first.to_f / second.to_f
end

def calculate(first, second, oper)
    if oper == "*" || oper == "prod"
        multiply(first,second)
    
    elsif oper == "+" || oper == "sum"
        add(first,second)
        
    elsif oper == "-" || oper == "diff"
        subtract(first,second)

    elsif oper == "/" || oper == "div"
        divide(first,second)

    else
        return "Wrong Operation Selected"
    end
end

50.times{print '-'}
puts "\nSIMPLE CALCULATOR"

puts "Num 1:"
num1 = gets.chomp

puts "Num 2:"
num2 = gets.chomp

puts "Operation:"
oper = gets.chomp

# Function Calling
puts "Answer = #{calculate(num1,num2,oper)}"

50.times{print '-'}