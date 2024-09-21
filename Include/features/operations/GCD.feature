Feature: Calculator GCD Operation
  As a user
  I want to calculate the greatest common divisor of two numbers
  So that I can find their largest common factor

  Scenario: GCD of two positive numbers
    Given I have a calculator
    When I calculate the GCD of 48 and 18
    Then the result should be 6

  Scenario: GCD of two negative numbers
    Given I have a calculator
    When I calculate the GCD of -48 and -18
    Then the result should be 6

  Scenario: GCD of a positive and a negative number
    Given I have a calculator
    When I calculate the GCD of -48 and 18
    Then the result should be 6

  Scenario: GCD with zero
    Given I have a calculator
    When I calculate the GCD of 0 and 5
    Then the result should be 5

  Scenario: GCD of two zeros
    Given I have a calculator
    When I calculate the GCD of 0 and 0
    Then the result should be 0

  Scenario: GCD of two large prime numbers
    Given I have a calculator
    When I calculate the GCD of 104729 and 104723
    Then the result should be 1

  Scenario: GCD of two equal numbers
    Given I have a calculator
    When I calculate the GCD of 100 and 100
    Then the result should be 100

  Scenario: GCD of two equal numbers
    Given I have a calculator
    When I calculate the GCD of 100 and 100
    Then the result should be 100

  Scenario: GCD of two non numbers
    Given I have a calculator
    When I calculate the GCD of "abc" and "100"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"
