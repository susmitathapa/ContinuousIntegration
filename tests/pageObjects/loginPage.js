//concept/implementation of page object model(POM)
//loginpage page object

class LoginPage {
  constructor() {
    //selectors
    this.emailSelector = "input[name='email']";
    this.passwordSelector = "input[name='password']";
    this.loginSelector = "input[value='Login']";
    this.popoverSelector = "div[class='alert alert-danger']";
    this.loginURL= "http://localhost:3000";
  }

  async navigate() {
    //navigation
    await page.goto(this.loginURL);
  }

  async enterCredentials(email, password) {
    //entering the data
    await page.type(this.emailSelector, email);
    await page.type(this.passwordSelector, password);
    await page.click(this.loginSelector);
  }
}

module.exports = { LoginPage };
