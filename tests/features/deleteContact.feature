Feature: Delete Contact
     As a user
     I want to delete contact
     So that I can remove unwanted contact from the list

   Background:
         Given user has navigated to  homepage
    
   Scenario Outline: User deletes specific contact
        Given the following users have been added to the contact list:
           |name    |email                |phone     |contactType  |
           |Susmita |susmita412@gmail.com |984635346 |Personal     |
           |Sita    |sita412@gmail.com    |984635446 |Professional |    
           |Gita    |sita412@gmail.com    |          |Professional | 
        When user deletes following contact with email:
           |email                |
           |susmita412@gmail.com |
        Then user should not see the following contact with email "susmita412@gmail.com" in the contact list
        But user should see the following contacts in the contact list:    
           |Sita    |sita412@gmail.com    |984635446 |Professional |    
           |Gita    |sita412@gmail.com    |          |Professional | 

    Scenario: Add a contact and delete it
        Given the following user has been added to the contact list:
          |name    |email                |phone     |contactType   |
          |Susmita |susmita412@gmail.com |984635346 |Personal      |   
        When user deletes the following contact with email:
          |email                |
          |susmita412@gmail.com |
        Then user should not see the contact with email "susmita412@gmail.com" in the contact list.
          