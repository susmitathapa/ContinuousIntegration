//registrationPage page object

class RegistrationPage {
  constructor() {
    //selectors
    this.nameSelector = "input[name='name']";
    this.emailSelector = "input[name='email']";
    this.passwordSelector = "input[name='password']";
    this.confirmPasswordSelector = "input[name='password2']";
    this.navRegisterSelector = "div [href='/register']";
    this.registerSelector = "input[value='Register']";
    this.loginSelector = "input[value='Login']";
    this.popUpSelector = "div[class='alert alert-danger']";
    this.registrationURL = "http://localhost:3000";
  }

  async navigateRegistrationPage() {
    //navigation
    await page.goto(this.registrationURL);
    await page.click(this.navRegisterSelector);
  }

  async registerUser(data) {
    //entering the data
    await page.fill(this.nameSelector, data.name);
    await page.fill(this.emailSelector, data.email);
    await page.fill(this.passwordSelector, data.password);
    await page.fill(this.confirmPasswordSelector, data.confirmPassword);
    await page.click(this.registerSelector);
  }
}

module.exports = { RegistrationPage };
