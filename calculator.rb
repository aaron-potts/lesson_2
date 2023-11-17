=begin
  1) ask the user for two numbers
  2) ask the user for math operation
  3) perform the operation on the two numbers
  4) output the result
=end

Kernel.puts("Welcome to the calculator!")

Kernel.puts("What is the first number?")
number1 = Kernel.gets().chomp().to_i()


Kernel.puts("What is the second number?")
number2 = Kernel.gets().chomp().to_i()

Kernel.puts("What operation would you like to perform? 1) Add 2) Subtract 3) Divide 4) Multiply")
operator = Kernel.gets().chomp().to_i()

case operator
when 1 
    result = number1 + number2
when 2
    result = number1 - number2
when 3
    result = number1.to_f() / number2.to_f()
when 4
    result = number1 * number2
end

Kernel.puts("The result is #{result}")