Feature: Calculator Subtraction
  As a user
  I want to subtract one number from another
  So that I can get their difference


  Scenario: Subtract a smaller positive number from a larger positive number
    Given I have a calculator
    When I subtract 3 from 8
    Then the result should be 5

  Scenario: Subtract a larger positive number from a smaller positive number
    Given I have a calculator
    When I subtract 7 from 2
    Then the result should be -5

  Scenario: Subtract a negative number
    Given I have a calculator
    When I subtract -4 from 6
    Then the result should be 10

  Scenario: Subtract from a negative number
    Given I have a calculator
    When I subtract 5 from -3
    Then the result should be -8

  Scenario: Subtract two non numbers
    Given I have a calculator
    When I add "abc" and "abc"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"