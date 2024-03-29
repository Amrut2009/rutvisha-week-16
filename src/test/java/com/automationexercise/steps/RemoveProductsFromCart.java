package com.automationexercise.steps;

import com.automationexercise.pages.ViewCartPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class RemoveProductsFromCart {
    @Then("Verify that cart page is displayed")
    public void verifyThatCartPageIsDisplayed() {
        Assert.assertEquals(new ViewCartPage().verifyShoppingCartText(), "Shopping Cart");
    }

    @When("The user clicks X button corresponding to particular product")
    public void theUserClicksXButtonCorrespondingToParticularProduct() {
        new ViewCartPage().clickRemoveQtyButton();
    }

    @Then("Verify that product is removed from the cart")
    public void verifyThatProductIsRemovedFromTheCart() {
        Assert.assertEquals(new ViewCartPage().verifycartEmptyText(), "");
    }



}
