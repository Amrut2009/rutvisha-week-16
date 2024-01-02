Feature: Add review on product

  Scenario: Add review on product
Feature:  Add review on product
@Sanity
  Scenario:  Add review on product
    Given The user is on the home page
    When The user clicks Products menu button
    Then Verify user is navigated to ALL PRODUCTS page successfully
    When The user clicks View Product for any product on home page
    Then Verify Write Your Review is visible
    And The user fills in name "rutu"
    And The user fills in email "rut@gmail.com"
    And The user fills in review "test"
    And The click Submit Button
    Then Verify success message Thank you for your review.