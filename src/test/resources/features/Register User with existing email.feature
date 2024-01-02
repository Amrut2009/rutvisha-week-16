Feature: Register User with existing email

  Scenario: Register User with existing email
Feature: TC05 Register User with existing email
@Sanity
  Scenario: TC05 Register User with existing email
    Given The user is on the home page
    When The user clicks Signup Login menu button
    Then Verify New User Signup! is visible
    When The user enters existing name "rutu"
    When The user enters existing email "patel_rutvisha@hotmail.com"
    And The user clicks Signup button
    Then Verify error Email Address already exist is visible