Feature: Register
   As a user
   I want to register
   So that I can use the contact fox app

   Background:
       Given user has been navigated to registration page
   
   Scenario: New user registration with valid inputs
       When the user registers with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |p12risha3@gmail.com  |prisha12345  |prisha12345      |
       Then user should be navigated to the homepage

    Scenario: User registers with already existing account 
       Given the user has been registered with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |p12risha3@gmail.com  |prisha12345  |prisha12345      | 
       And the user log outs
       And user has been navigated to registration page
       When the user registers with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |p12risha3@gmail.com  |prisha12345  |prisha12345      | 
       Then user should see the message "User already exists. Please choose another email address."
        
    Scenario Outline: New user registers with invalid inputs
       When the user registers with following credentials:
       |name  |email   |password   |confirmPassword|
       |<name>|<email> |<password> |<confirmPassword>|
       Then user should see the message "<error>"
       Examples:
         |name        |email                 |password  |confirmPassword  |error                            |
         |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvbnn          |Passwords do not match.          |
         |            |                      |          |                 |Please enter all fields.         |
        # these two scenarios does not work because its popup error cannot be found since it appears in input field  
        #  |Susmita     |susmita412@gmail.com  |zxcv      |zxcv             |password less than 6 characters  |
        #  |Susmita     |susmita412@gmail.com  |zxcvbnm   |zxcvb            |passwords less than 6 characters | 
         