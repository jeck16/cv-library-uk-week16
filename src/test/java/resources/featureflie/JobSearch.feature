@regression
@Regression
Feature: Search functionality of CV-Library

  @Smoke
  Scenario Outline: verify Job Search Result Using Different DataSet
    Given I am on homePage
    When I accept cookies
    And I enter Job Title "<Title>"
    And I Enter Location "<Location>"
    And I select Distance "<Distance>"
    And  I click On more Search Option Link
    And I enter Min Salary "<Min Salary>"
    And I enter Max Salary "<Max Salary>"
    And I select salary Type "<Salary Type>"
    And I select Job Type "<Job Type>"
    And I click On find Job Button
    Then Verify the Result Displayed

    Examples:

      | Title       | Location   | Distance       | Min Salary | Max Salary | Salary Type | Job Type  |
      | Tester      | Harrow     | up to 5 miles  | 30000      | 500000     | Per annum   | Permanent |
      | Developer   | London     | up to 10 miles | 40000      | 600000     | Per annum   | Permanent |
      | Accountant  | Birmingham | up to 15 miles | 50000      | 700000     | Per annum   | Permanent |
      | Engineer    | Leeds      | up to 25 miles | 70000      | 900000     | Per annum   | Permanent |
      | Salesperson | Liverpool  | up to 30 miles | 80000      | 1000000    | Per annum   | Permanent |
