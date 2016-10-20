require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_substractition
    assert_equal 0, @calculator.calculate_answer('add', 0, 0)
    assert_equal 1, @calculator.calculate_answer('add', 1, 0)
    assert_equal 1, @calculator.calculate_answer('add', 0, 1)
    assert_equal -1, @calculator.calculate_answer('add', -1, 0)
    assert_equal -1, @calculator.calculate_answer('add', 0, -1)
    assert_equal 0, @calculator.calculate_answer('add', -1, 1)
    assert_equal 2, @calculator.calculate_answer('add', 1, 1)
    assert_equal -2, @calculator.calculate_answer('add', -1, -1)
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
