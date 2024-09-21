Feature: Calculator Modulo
  As a user
  I want to find the remainder of division between two numbers
  So that I can perform modulo operations

  Scenario: Modulo of two positive numbers
    Given I have a calculator
    When I calculate 17 modulo 5
    Then the result should be 2

  Scenario: Modulo with negative dividend
    Given I have a calculator
    When I calculate -17 modulo 5
    Then the result should be -2

  Scenario: Modulo with negative divisor
    Given I have a calculator
    When I calculate 17 modulo -5
    Then the result should be 2

  Scenario: Modulo with both negative numbers
    Given I have a calculator
    When I calculate -17 modulo -5
    Then the result should be -2

  Scenario: Modulo with dividend smaller than divisor
    Given I have a calculator
    When I calculate 3 modulo 5
    Then the result should be 3

  Scenario: Attempt to calculate modulo by zero
    Given I have a calculator
    When I try to calculate 10 modulo 0
    Then it should throw an "ArithmeticException" with message "Modulo by zero is not allowed"

  Scenario: Modulo with non negative numbers
    Given I have a calculator
    When I calculate "abc" modulo "5"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"