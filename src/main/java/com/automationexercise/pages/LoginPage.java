package com.automationexercise.pages;

import com.automationexercise.utility.Utility;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage extends Utility {
    private static final Logger log = LogManager.getLogger(LoginPage.class.getName());

    public LoginPage() {
        PageFactory.initElements(driver, this);
    }


    @CacheLookup
    @FindBy(xpath = "//input[@data-qa='login-email']")
    public WebElement loginEmailBox;

    @CacheLookup
    @FindBy(xpath = "//input[@data-qa='login-password']")
    public WebElement loginPasswordBox;

    @CacheLookup
    @FindBy(xpath = "//button[@data-qa='login-button']")
    public WebElement loginButton;

    @CacheLookup
    @FindBy(xpath = "//p[contains(text(),'incorrect')]")
    public WebElement incorrectText;

    @CacheLookup
    @FindBy(xpath = "//a[.=' Logout']")
    public WebElement logoutButton;

    public void enterLoginEmailBoxText(String loginEmailBoxText) {
        log.info("Enter login Email Box Text." + loginEmailBox);
        sendTextToElement(loginEmailBox, loginEmailBoxText);
    }

    public void enterloginPasswordBoxText(String loginPasswordBoxText) {
        log.info("Enter login Password Box Text." + loginPasswordBox);
        sendTextToElement(loginPasswordBox, loginPasswordBoxText);
    }

    public void clickLoginButton() {
        log.info("Click login Button." + loginButton.toString());
        clickOnElement(loginButton);
    }

    public String verifyIncorrectText() {
        log.info("Verify incorrect Text" + incorrectText.toString());
        return getTextFromElement(incorrectText);
    }

    public void clickLogoutButton() {
        log.info("Click on logout Button" + logoutButton.toString());
        clickOnElement(logoutButton);
    }

}