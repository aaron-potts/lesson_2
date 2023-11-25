=begin
  1) ask the user for two numbers
  2) ask the user for math operation
  3) perform the operation on the two numbers
  4) output the result
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != Integer
end

prompt("Welcome to the calculator! Your name, please: ")
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = ''

  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp().to_i()
    if valid_number?(number1)
      break
    else
      prompt("Invalid input. Enter a number.")
    end
  end

  number2 = ''
  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp().to_i()
    if valid_number?(number2)
      break
    else
      prompt("Invalid input. Enter a number.")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Add
  2) Subtract
  3) Divide
  4) Multiply
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end

  case operator
  when "1"
    result = number1 + number2
  when "2"
    result = number1 - number2
  when "3"
    result = number1.to_f() / number2.to_f()
  when "4"
    result = number1 * number2
  end

  prompt("The result is #{result}")

  prompt("Would you like to do another operation? (y or n)")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator, #{name}")
