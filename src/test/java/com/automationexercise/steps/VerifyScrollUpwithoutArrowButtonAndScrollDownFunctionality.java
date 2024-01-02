package com.automationexercise.steps;

import com.automationexercise.pages.HomePage;
import io.cucumber.java.en.When;

public class VerifyScrollUpwithoutArrowButtonAndScrollDownFunctionality {

    @When("The user scrolls up to top")
    public void theUserScrollsUpToTop() {
        new HomePage().scrollUpScript();
    }

}
