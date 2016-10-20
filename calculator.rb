# Implements logic of a calculator
require 'minitest/autorun'

class Calculator  < Minitest::Test
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


  ## Tests
  # Request
  def test_request_add
  		assert_equal "add", request_calculation_type(1)
  end

  def test_request_subtract
  		assert_equal "subtract", request_calculation_type(2)
  end

  def test_request_multiply
  		assert_equal "multiply", request_calculation_type(3)
  end

  def test_request_divide
  		assert_equal "divide", request_calculation_type(4)
  end

  def test_request_error
  		assert_equal "error", request_calculation_type(7)
  end


  # Adding
  def test_add_possitive_with_cero
    assert_equal 2, calculate_answer('add',2,0)
  end

  def test_add_negative_with_cero
    assert_equal -2, calculate_answer('add',-2,0)
  end

  def test_add_two_possitives
    assert_equal 5, calculate_answer('add',2,3)
  end

  def test_add_two_negatives
    assert_equal -5, calculate_answer('add',-2,-3)
  end

  # Multiply
  def test_mult_pos_pos
    assert_equal 4, calculate_answer('multiply', 2, 2)
  end

  def test_mult_neg_pos
    assert_equal -4, calculate_answer('multiply', 2, -2)
  end

  def test_mult_zero_pos
    assert_equal 0, calculate_answer('multiply', 2, 0)
  end

  def test_mult_zero_neg
    assert_equal 0, calculate_answer('multiply', -2, 0)
  end

  def test_mult_zero_zero
    assert_equal 0, calculate_answer('multiply', 0, 0)
  end

  # Subtract
  def test_sub_positive_with_cero
      assert_equal 2, calculate_answer('subtract',2,0)
  end

  def test_sub_negative_with_cero
      assert_equal -2, calculate_answer('subtract',-2,0)
  end

  def test_sub_cero_with_negative
      assert_equal 2, calculate_answer('subtract',0,-2)
  end

  def test_sub_cero_with_positive
      assert_equal -2, calculate_answer('subtract',0,2)
  end

  def test_sub_cero_with_cero
      assert_equal 0, calculate_answer('subtract',0,0)
  end

  def test_sub_negative_with_negative
      assert_equal 0, calculate_answer('subtract',-1,-1)
  end

  def test_sub_positive_with_positive
      assert_equal 0, calculate_answer('subtract',1,1)
  end

  def test_sub_positive_with_negative
      assert_equal 2, calculate_answer('subtract',1,-1)
  end

  def test_sub_negative_with_positive
      assert_equal 0, calculate_answer('subtract',1,1)
  end


  # Divide
  def test_div_neg_neg
    assert_equal 1, calculate_answer('divide', -1, -1)
  end

  def test_div_neg_pos
    assert_equal -1, calculate_answer('divide', -1, 1)
  end

  def test_div_pos_pos
    assert_equal 1, calculate_answer('divide', 1, 1)
  end

  def test_div_pos_zero
    assert_raises ZeroDivisionError do
      calculate_answer('divide', 1, 0)
    end
  end

  def test_div_neg_zero
    assert_raises ZeroDivisionError do
      assert_raises calculate_answer('divide', -1, 0)
    end
  end

  def test_add_negative_with_string
    assert_raises TypeError do
      assert_raises calculate_answer('add', 2 , 'oli')
    end
  end



end
