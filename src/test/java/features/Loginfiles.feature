@F_Login
Feature: This feature would be used to design the Login page of the application.

  Background: Open the application
    Given I have opened  the application in browser

  @Sanity
  Scenario: Validate the successful login
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the login Button
    Then I should be Landed on the home page

  @Regression @U_1234
  Scenario: Validate the successful login using Test data
    When I click on the Login link
    And I enter username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on the login Button
    Then I should be Landed on the home page

  @Regression @Rapid
  Scenario Outline: Validate the successful login using multiple data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the login Button
    Then I should be Landed on the home page

    Examples: 
      | UserName      | Password |
      | abc@xyz.com   | Pqr@1234 |
      | divya@abc.com | Pqr@1234 |

  Scenario Outline: Validate the negative login using the test data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the login Button
    Then I should get the error message as "The email or password you have entered is invalid"
