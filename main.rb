require './Calculator'

calculator = Calculator.new

name = calculator.greeting
run_calculator = 1

while run_calculator == 1
  print(
    'Type 1 to add, 2 to subtract, 3 to multiply, or '\
    '4 to divide two numbers: '
  )
  operation_selection = gets.to_i
  current_calculation = calculator.request_calculation_type(operation_selection)
  if current_calculation == 'error'
    puts 'I do not understand this type of calculation... Can we try again?'
  else
    puts "\nWhat is the first number you "\
         "would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "\nWhat is the second number you "\
         "would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculator.calculate_answer(
      current_calculation, first_number, second_number
    )

    puts "\nYour answer is #{answer}"
    puts "\nType 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i
  end
end
puts "\nBye #{name}"
