Feature: Login User with incorrect email and password

  Scenario: Login User with incorrect email and password
Feature: TC03 Login User with incorrect email and password
@smoke
  Scenario: TC03 Login User with incorrect email and password
    Given The user is on the home page
    When The user clicks Signup Login menu button
    Then Verify New User Signup! is visible
    When The user enters correct email address "rutu222@gmail.com"
    When The user enters correct password "rutu12123456"
    And The user clicks login button
    Then Verify error Your email or password is incorrect is visible