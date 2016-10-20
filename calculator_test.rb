require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test

  def setup
    @calculator = Calculator.new
  end

  def test_add_basic
    assert_equal 0, @calculator.calculate_answer("add", 0, 0)
  end

end
