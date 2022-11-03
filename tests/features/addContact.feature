Feature: Add Contact
     As a user
     I want to add contacts
     So that I can save my contacts
     
     Scenario Outline: User adds single contact with valid inputs
        Given user has been navigated to registration page
        And the user has been registered with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |prisha123@gmail.com  |prisha12345  |prisha12345      | 
        When user adds the following contact:
           |name    |email    |phone     |contactType   |
           |<name>  |<email>  |<phone>   |<contactType> |           
        Then user should see the added email "<email>" in the contact list:    
        Examples:
           |name    |email                |phone     |contactType  |
           |Susmita |susmita412@gmail.com |984635346 |personal     |
         #   |Sita    |sita412@gmail.com    |984635446 |professional |
         #   |Gita    |gita412@gmail.com    |          |professional |

     Scenario Outline: User adds multiple contacts with valid inputs
        Given user has been navigated to registration page
        And the user has been registered with following credentials:
         |name    |email                |password     |confirmPassword  |
         |Prisha  |prisha123@gmail.com  |prisha12345  |prisha12345      | 
        When user adds the following contact:
         |name    |email                |phone     |contactType  |
         |Susmita |susmita412@gmail.com |984635346 |personal     |
         |Sita    |sita412@gmail.com    |984635446 |professional |
         |Gita    |gita412@gmail.com    |          |professional |
        Then user should see the added email "gita412@gmail.com" in the contact list:
        Examples:
           |name    |email                |phone     |contactType  |
           |Susmita |susmita412@gmail.com |984635346 |personal     |
         #   |Sita    |sita412@gmail.com    |984635446 |professional |
         #   |Gita    |gita412@gmail.com    |          |professional |
         