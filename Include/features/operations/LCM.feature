Feature: Calculator LCM Operation
  As a user
  I want to calculate the least common multiple of two numbers
  So that I can find the smallest number that is divisible by both

  Scenario: LCM of two positive numbers
    Given I have a calculator
    When I calculate the LCM of 4 and 6
    Then the result should be 12

  Scenario: LCM of two negative numbers
    Given I have a calculator
    When I calculate the LCM of -4 and -6
    Then the result should be 12

  Scenario: LCM of a positive and a negative number
    Given I have a calculator
    When I calculate the LCM of -4 and 6
    Then the result should be 12

  Scenario: LCM with zero
    Given I have a calculator
    When I calculate the LCM of 0 and 5
    Then the result should be 0

  Scenario: LCM of two zeros
    Given I have a calculator
    When I calculate the LCM of 0 and 0
    Then the result should be 0

  Scenario: LCM of two large prime numbers
    Given I have a calculator
    When I calculate the LCM of 104729 and 104723
    Then it should throw an "ArithmeticException" with message "Integer overflow"

  Scenario: LCM of two equal numbers
    Given I have a calculator
    When I calculate the LCM of 100 and 100
    Then the result should be 100

  Scenario: LCM of coprime numbers
    Given I have a calculator
    When I calculate the LCM of 25 and 36
    Then the result should be 900

  Scenario: LCM of two non numbers
    Given I have a calculator
    When I calculate the LCM of "abc" and "100"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"