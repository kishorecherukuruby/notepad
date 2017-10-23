require 'test_helper'

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get addition" do
    get calculator_addition_url
    assert_response :success
  end

  test "should get subtraction" do
    get calculator_subtraction_url
    assert_response :success
  end

  test "should get multiplication" do
    get calculator_multiplication_url
    assert_response :success
  end

  test "should get division" do
    get calculator_division_url
    assert_response :success
  end

end
