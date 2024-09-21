Feature: Calculator Fibonacci Operation
  As a user
  I want to calculate Fibonacci numbers
  So that I can work with this important mathematical sequence

  Scenario: Calculate Fibonacci number at position 0
    Given I have a calculator
    When I calculate the Fibonacci number at position 0
    Then the result should be 0

  Scenario: Calculate Fibonacci number at position 1
    Given I have a calculator
    When I calculate the Fibonacci number at position 1
    Then the result should be 1

  Scenario: Calculate Fibonacci number at position 2
    Given I have a calculator
    When I calculate the Fibonacci number at position 2
    Then the result should be 1

  Scenario: Calculate Fibonacci number at position 3
    Given I have a calculator
    When I calculate the Fibonacci number at position 3
    Then the result should be 2

  Scenario: Calculate Fibonacci number at position 4
    Given I have a calculator
    When I calculate the Fibonacci number at position 4
    Then the result should be 3

  Scenario: Calculate Fibonacci number at position 5
    Given I have a calculator
    When I calculate the Fibonacci number at position 5
    Then the result should be 5

  Scenario: Calculate Fibonacci number at position 10
    Given I have a calculator
    When I calculate the Fibonacci number at position 10
    Then the result should be 55

  Scenario: Calculate Fibonacci number at position 20
    Given I have a calculator
    When I calculate the Fibonacci number at position 20
    Then the result should be 6765

  Scenario: Calculate Fibonacci number at position 30
    Given I have a calculator
    When I calculate the Fibonacci number at position 30
    Then the result should be 832040

  Scenario: Calculate Fibonacci number at position 40
    Given I have a calculator
    When I calculate the Fibonacci number at position 40
    Then the result should be 102334155

  Scenario: Calculate Fibonacci for negative number
    Given I have a calculator
    When I try to calculate the Fibonacci number at position -1
    Then it should throw an "IllegalArgumentException" with message "Input must be non-negative"

  Scenario: Calculate Fibonacci for non number
    Given I have a calculator
    When I calculate the Fibonacci number at position "abc"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"

  Scenario: Overflow Fibonacci
    Given I have a calculator
    When I calculate the Fibonacci number at position 48
    Then it should throw an "ArithmeticException" with message "Integer overflow"
