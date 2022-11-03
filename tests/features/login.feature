Feature: login

   As a user
   I want to login
   So that I can access my account

   Scenario: login to contact fox account with valid credentials
        Given user has been navigated to registration page
        And the user has been registered with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |prisha123@gmail.com  |prisha12345  |prisha12345      | 
        And the user log outs
        And user has been navigated to login page
        When user enters credentials "prisha123@gmail.com" and "prisha12345"
        Then user should be navigated to home page

   Scenario Outline: login to contact fox account with invalid credentials
        Given user has been navigated to login page
        When user enters credentials "<email>" and "<password>"
        Then user should see the error message "<message>"
        Examples:
            |email                      |password   |message              |
            |susmitathapa412@gmail.com  |zxcvbnm    |Invalid credentials. |
            |susmitathapa4@gmail.com    |zxcvbnm123 |Invalid credentials. |