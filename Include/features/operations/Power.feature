Feature: Calculator Power Operation
  As a user
  I want to calculate the power of a number
  So that I can perform exponentiation

  Scenario: Positive base and positive exponent
    Given I have a calculator
    When I calculate 2 to the power of 3
    Then the result should be 8

  Scenario: Negative base and even exponent
    Given I have a calculator
    When I calculate -2 to the power of 4
    Then the result should be 16

  Scenario: Negative base and odd exponent
    Given I have a calculator
    When I calculate -2 to the power of 3
    Then the result should be -8

  Scenario: Any number to the power of 0
    Given I have a calculator
    When I calculate 5 to the power of 0
    Then the result should be 1

  Scenario: Any number to the power of 1
    Given I have a calculator
    When I calculate 7 to the power of 1
    Then the result should be 7

  Scenario: Large exponent
    Given I have a calculator
    When I calculate 2 to the power of 30
    Then the result should be 1073741824

  Scenario: Attempt to calculate with negative exponent
    Given I have a calculator
    When I try to calculate 2 to the power of -1
    Then it should throw an "IllegalArgumentException" with message "Exponent must be non-negative"

  Scenario: Overflow case
    Given I have a calculator
    When I try to calculate 2 to the power of 63
    Then it should throw an "ArithmeticException" with message "Integer overflow"


  Scenario: Any number to the power of non number
    Given I have a calculator
    When I calculate "2" to the power of "abc"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"