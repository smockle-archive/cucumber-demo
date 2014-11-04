Feature: Fibonacci calculator
  In order to rock this presentation,
  As a student in QA,
  I want to get the nth value in the Fibonacci sequence.

Scenario: Check a valid input
  Given I want to find a value in the Fibonacci sequence
  When I specify n=13
  Then the calculator should return 233

Scenario: Check an edge case
  Given I want to find a value in the Fibonacci sequence
  When I specify n=1
  Then the calculator should return 1

Scenario: Check an invalid input
  Given I want to find a value in the Fibonacci sequence
  When I specify n=pickle
  Then the calculator should return an error
