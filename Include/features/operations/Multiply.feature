Feature: Calculator Multiplication
  As a user
  I want to multiply two numbers
  So that I can get their product

  Scenario: Multiply two positive numbers
    Given I have a calculator
    When I multiply 4 and 5
    Then the result should be 20

  Scenario: Multiply a positive and a negative number
    Given I have a calculator
    When I multiply 6 and -3
    Then the result should be -18

  Scenario: Multiply two negative numbers
    Given I have a calculator
    When I multiply -2 and -7
    Then the result should be 14

  Scenario: Multiply by zero
    Given I have a calculator
    When I multiply 8 and 0
    Then the result should be 0

  Scenario: Multiply two non numbers
    Given I have a calculator
    When I multiply "abc" and "5"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"

  Scenario: Multiply overflow
    Given I have a calculator
    When I multiply 10000000 and 10000000
    Then it should throw an "ArithmeticException" with message "Integer overflow"
