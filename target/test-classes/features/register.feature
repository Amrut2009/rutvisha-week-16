Feature: As a user
@regression
  Scenario: User should register successfully
    Given I am on homepage
    When The user clicks Signup Login menu button
    Then Verify New User Signup! is visible
    When The user enters name "Rutu"
    When The user enters email "rutvishapatel20@gmail.com"
    And The user clicks Signup button
    Then Verify that ENTER ACCOUNT INFORMATION is visible
    When User selects Mrs
    When User Enters Password "rutu12345"
    When User Selects Day "15"
    When User Selects Month "April"
    When User Selects Year "2002"
    When User Enters First Name "rutu"
    When User Enters Last Name "Patel"
    When User Enters Address "292 london Road"
    When User Enters Country "India"
    When User Enters State "gujarat"
    When User Enters City "Ahmedabad"
    When User Enters Zipcode "sl38ax"
    When User Enters Mobile "123454598"
    And The user clicks Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    When The user clicks Continue button
  #  And The user clicks Dismiss button
    Then Verify that Logged in as username is visible
    When The user clicks Delete Account button
    Then Verify that ACCOUNT DELETED is visible
    And The user clicks Other Continue button