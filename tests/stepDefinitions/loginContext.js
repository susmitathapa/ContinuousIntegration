//import { Given, When, Then } from "@cucumber/cucumber";
const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");
const { LoginPage } = require("../pageObjects/loginPage"); //importing loginpage.js(pageobject)
const { HomePage } = require("../pageObjects/homePage");

const loginPage = new LoginPage(); //creation of object of class-LoginPage
const homePage= new HomePage();

Given("user has been navigated to login page", async function () {
  console.log("user has been navigated to login page");
  await loginPage.navigate();
});

When(
  "user enters credentials {string} and {string}",
  async function (email, password) {
    await loginPage.enterCredentials(email, password);
  }
);

Then("user should be navigated to home page", async function () {
  await expect(page.locator(homePage.logoutSelector)).toBeVisible();
});

//invalid Scenario

Then("user should see the error message {string}", async function (message) {
  await expect(page.locator(loginPage.popoverSelector)).toHaveText(message);
});
