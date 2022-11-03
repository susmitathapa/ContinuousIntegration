const { chromium } = require("playwright"); //browser engine
const clearDatabase = require("./clearDatabase");
const {
  BeforeAll,
  Before,
  AfterAll,
  After,
  setDefaultTimeout,
} = require("@cucumber/cucumber");
setDefaultTimeout(60000);

BeforeAll(async () => {
  global.browser = await chromium.launch({
    //browser
    slowMo:100,
    headless: false,
  });
});

Before(async () => {
  global.context = await browser.newContext(); //context
  global.page = await context.newPage(); //page
});

AfterAll(async function () {
  await browser.close();
});

After(async function () {
  await context.close();
  await clearDatabase();
  await page.close();
});
