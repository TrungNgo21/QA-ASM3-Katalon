Feature: Calculator Division
  As a user
  I want to divide one number by another
  So that I can get their quotient

  Scenario: Divide two positive numbers
    Given I have a calculator
    When I divide 10 by 2
    Then the result should be 5.0

  Scenario: Divide a positive number by a negative number
    Given I have a calculator
    When I divide 15 by -3
    Then the result should be -5.0

  Scenario: Divide a negative number by a positive number
    Given I have a calculator
    When I divide -8 by 4
    Then the result should be -2.0

  Scenario: Divide with a non-integer result
    Given I have a calculator
    When I divide 5 by 2
    Then the result should be 2.5

  Scenario: Attempt to divide by zero
    Given I have a calculator
    When I try to divide 10 by 0
    Then it should throw an "ArithmeticException" with message "Division by zero is not allowed"

  Scenario: Divide two non numbers
    Given I have a calculator
    When I divide "abc" by "2"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"
