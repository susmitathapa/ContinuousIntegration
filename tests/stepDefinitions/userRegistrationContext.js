const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const { RegistrationPage } = require("../pageObjects/registrationPage");
const { HomePage } = require("../pageObjects/homePage");

const registrationPage = new RegistrationPage();
const homePage = new HomePage();

Given("user has been navigated to registration page", async function () {
  await registrationPage.navigateRegistrationPage();
});

When(
  "the user registers with following credentials:",
  async function (dataTable) {
    const myData = dataTable.hashes(); //it gives an array
    for (let data of myData) {
      await registrationPage.registerUser(data);
    }
  }
);
//user already exists scenario:
Given(
  "the user has been registered with following credentials:",
  async function (dataTable) {
    const myData = dataTable.hashes(); //it gives an array
    for (let data of myData) {
      await registrationPage.registerUser(data);
    }
  }
);

Given("the user has been navigated to homepage", async function () {
  await page.isVisible(homePage.logoutSelector);
});

Given("the user log outs", async function () {
  await page.click(homePage.logoutSelector);
});

Then("user should be navigated to the homepage", async function () {
  console.log("navigated to homepage");
  await page.isVisible(homePage.logoutSelector);
});

//invalid credentials

Then("user should see the message {string}", async function (error) {
  await expect(page.locator(registrationPage.popUpSelector)).toHaveText(error);
});
