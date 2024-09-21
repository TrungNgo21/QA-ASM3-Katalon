Feature: Calculator Addition
  As a user
  I want to add two numbers
  So that I can get their sum

  Scenario: Add two non numbers
    Given I have a calculator
    When I add "abc" and "abc"
    Then it should throw an "NumberFormatException" with message "Cannot calculate string value!"

  Scenario: Add two positive numbers
    Given I have a calculator
    When I add 5 and 7
    Then the result should be 12

  Scenario: Add a positive and a negative number
    Given I have a calculator
    When I add 8 and -3
    Then the result should be 5

  Scenario: Add two negative numbers
    Given I have a calculator
    When I add -4 and -6
    Then the result should be -10