const { Given, When, Then } = require("@cucumber/cucumber");
const { expect } = require("@playwright/test");

const nameSelector = "input[name='name']";
const emailSelector = "input[name='email']";
const phonenumSelector = "input[name='phone']";
const addedEmailSelector = "//*[@class='fas fa-envelope-open-text']/parent::li";
const addContactSelector = "input[value='Add Contact']";

When("user adds the following contact:", async function (dataTable) {
  const myData = dataTable.hashes(); //it gives an array
  await page.waitForSelector("//div[@class='grid-2']/div[1]/form");
  for (let i = 0; i < myData.length; i++) {
    //applying loop to print values of object inside an array
    const contactTypeSelector = `input[value=${myData[i].contactType}]`;
    const locator = page.locator(addContactSelector);
    const name = myData[i].name;
    const email = myData[i].email;
    const phone = myData[i].phone;
  //  await page.waitForSelector();
    await page.fill(nameSelector, name);
    await page.fill(emailSelector, email);
    await page.fill(phonenumSelector, phone);
    await page.click(contactTypeSelector);
    await locator.click();
  }
});

Then(
  "user should see the added email {string} in the contact list:",
  async function (email) {
    const emailLocator = page.locator(addedEmailSelector);
    const myArray = await emailLocator.allInnerTexts();
    console.log(myArray);
    for (let i=0; i<myArray.length;i++) {
    console.log(myArray[i]);
    if (email !== myArray[i].trim()){
      throw new Error("the email is not listed in contact"
  }
});   