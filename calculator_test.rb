require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 0, @calculator.calculate_answer('add', 0, 0)
    assert_equal 1, @calculator.calculate_answer('add', 1, 0)
    assert_equal 1, @calculator.calculate_answer('add', 0, 1)
    assert_equal -1, @calculator.calculate_answer('add', -1, 0)
    assert_equal -1, @calculator.calculate_answer('add', 0, -1)
    assert_equal 0, @calculator.calculate_answer('add', -1, 1)
    assert_equal 2, @calculator.calculate_answer('add', 1, 1)
    assert_equal -2, @calculator.calculate_answer('add', -1, -1)
  end

  def test_multiply
    operation = 'multiply'
    assert_equal 8, @calculator.calculate_answer(operation, 4, 2)
    assert_equal -8, @calculator.calculate_answer(operation, 4, -2)
    assert_equal 8, @calculator.calculate_answer(operation, -4, -2)
  end

  def test_multiply_by_zero
    operation = 'multiply'
    assert_equal 0, @calculator.calculate_answer(operation, 4, 0)
    assert_equal 0, @calculator.calculate_answer(operation, 0, -2)
    assert_equal 0, @calculator.calculate_answer(operation, 0, 1)
    assert_equal 0, @calculator.calculate_answer(operation, 0, 0)
  end

  def test_multiply_by_one
    operation = 'multiply'
    assert_equal 4, @calculator.calculate_answer(operation, 4, 1)
    assert_equal -2, @calculator.calculate_answer(operation, 1, -2)
    assert_equal 1, @calculator.calculate_answer(operation, 1, 1)
    assert_equal 0, @calculator.calculate_answer(operation, 1, 0)
  end

  def test_divide
    operation = 'divide'
    assert_equal 2, @calculator.calculate_answer(operation, 4, 2)
    assert_equal -2, @calculator.calculate_answer(operation, 4, -2)
    assert_equal 0, @calculator.calculate_answer(operation, -2, -4)
  end

  def test_divide_by_zero
    operation = 'divide'
    assert_equal 'error', @calculator.calculate_answer(operation, 4, 0)
    assert_equal 'error', @calculator.calculate_answer(operation, -4, 0)
  end

  def test_divide_zero
    operation = 'divide'
    assert_equal 0, @calculator.calculate_answer(operation, 0, -2)
    assert_equal 0, @calculator.calculate_answer(operation, 0, 4)
  end

  def test_divide_by_one
    operation = 'divide'
    assert_equal 4, @calculator.calculate_answer(operation, 4, 1)
    assert_equal -2, @calculator.calculate_answer(operation, -2, 1)
    assert_equal 1, @calculator.calculate_answer(operation, 1, 1)
    assert_equal 0, @calculator.calculate_answer(operation, 0, 1)
  end


  def test_by_string
    operation = 'add'
    assert_equal 'error', @calculator.calculate_answer(operation, 'hola', 1)
    assert_equal 'error', @calculator.calculate_answer(operation, 1, '1')

  end

  def test_subtraction
    assert_equal 0, @calculator.calculate_answer('subtract', 0, 0)
    assert_equal 1, @calculator.calculate_answer('subtract', 1, 0)
    assert_equal -1, @calculator.calculate_answer('subtract', 0, 1)
    assert_equal -1, @calculator.calculate_answer('subtract', -1, 0)
    assert_equal 1, @calculator.calculate_answer('subtract', 0, -1)
    assert_equal -2, @calculator.calculate_answer('subtract', -1, 1)
    assert_equal 0, @calculator.calculate_answer('subtract', 1, 1)
    assert_equal 0, @calculator.calculate_answer('subtract', -1, -1)
  end
end
