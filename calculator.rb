# Implements logic of a calculator
class Calculator
  # This method greets the user on start up and request their name
  # It returns their name
  def greeting
    puts 'Hello!  Please type your name: '
    name = gets
    puts "\nIt is nice to meet you #{name}\n"
    puts 'I am a simple calculator application. '\
         "I can add, subtract, multiply, and divide.\n\n"
    name
  end

  # This method ask the user what type of calculation they would like to perform
  # It returns the operation or an error for erroneous entry
  def request_calculation_type(operation_selection)
    if operation_selection == 1
      'add'
    elsif operation_selection == 2
      'subtract'
    elsif operation_selection == 3
      'multiply'
    elsif operation_selection == 4
      'divide'
    else
      'error'
    end
  end

  # This method performs the requested calculation
  # It returns the result of the calculation
  def calculate_answer(operator, a, b)
    if operator == 'add'
      a + b
    elsif operator == 'subtract'
      a - b
    elsif operator == 'multiply'
      a * b
    elsif operator == 'divide'
      a / b
    end
  end
end
