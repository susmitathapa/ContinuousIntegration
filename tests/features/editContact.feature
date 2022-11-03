Feature: edit contact

   As a user
   I want to edit contact
   So that I can correct my contact details

   Background:
         Given user has navigated to homepage

   Scenario: Add single user and edit its data
        Given user has added following contact in the contact list:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita412@gmail.com |984635346 |Personal      |  
        When user updates the contact with email "susmita412@gmail.com" with following data:
            |phone     |contactType   |
            |985466654 |Professional  |
        Then the updated contact with email "susmita412@gmail.com" in the contact list should be:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita412@gmail.com |985466654 |Professional  |

   Scenario: User edits specific contact 
        Given user has added following contact in the contact list:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita412@gmail.com |984635346 |Personal      |  
            |Sita    |sita412@gmail.com    |984635346 |Personal      |
            |Gita    |gita412@gmail.com    |984635346 |Personal      |
        When user updates the contact with email "susmita412@gmail.com" with following data:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita123@gmail.com |985466654 |Professional  |
        Then the contact with the emal "susmita412@gmail.com" should not be in the contact list
        And the updated contact with email "susmita123@gmail.com" in the contact list should be seen as:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita123@gmail.com |985466654 |Professional  |