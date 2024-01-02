Feature: Place Order: Register before Checkout

  Scenario: Place Order: Register before Checkout
Feature:  Place Order Register before Checkout
@sanity
  Scenario:  Register before Checkout
    Given The user is on the home page
    When The user clicks Signup Login menu button
    And The user enters name "rutu"
    And The user enters email "rutvishapate20@gmail.com"
    And The user clicks Signup button
    When User selects Mr
    When User Enters Password "rutu12345"
    When User Selects Day "15"
    When User Selects Month "April"
    When User Selects Year "2008"
    When User Enters First Name "rutu"
    When User Enters Last Name "Patel"
    When User Enters Address "292 london Road"
    When User Enters Country "India"
    When User Enters State "Gujarat"
    When User Enters City "nadiad"
    When User Enters Zipcode "sl38ax"
    When User Enters Mobile "12345634598"
    And The user clicks Create Account button
    Then Verify that ACCOUNT CREATED! is visible
    When The user clicks Continue button
    Then Verify that Logged in as username is visible
    When The user hovers over first product and clicks Add to cart
    And The user clicks Continue Shopping button
    And The user hovers over second product and clicks Add to cart
    And The user clicks Continue Shopping button
    And The user clicks Cart menu button
    Then Verify that cart page is displayed
    When The user clicks Proceed To Checkout button
    Then Verify that the delivery address is same address filled at the time registration of account
    And Verify that the billing address is same address filled at the time registration of account
    When The user enters description in comment text area "thanks"
    And Click Place Order button
    And The user enters payment details Name on Card "rutvishapatel"
    And The user enters payment details Card Number "1234567891234567"
    And The user enters payment details CVC "311"
    And The user enters payment details Expiration month "11"
    And The user enters payment details Expiration year "2024"
    When The user clicks Pay and Confirm Order button
    #Then Verify success message Your order has been placed successfully!
    When The user clicks Delete Account button
    Then Verify that ACCOUNT DELETED is visible
    And The user clicks after delete Continue button