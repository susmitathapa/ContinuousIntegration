Feature: Search contact
   As a user
   I want to search contact
   So that I can find the searched contact

   Background:
        Given user has navigated to homepage
        And user has added following contacts in the contact list:
            |name    |email                |phone     |contactType   |
            |Susmita |susmita412@gmail.com |984635346 |Personal      |  
            |Sita    |sita412@gmail.com    |984635346 |Personal      |
            |Gita    |gita412@gmail.com    |984635346 |Personal      |

   Scenario: User searches contact by name
       When user searches the contact by name "name"
       Then only the contacts with name "name" should be displayed in the contact list

    Scenario: User searches contact by email
       When user searches the contact with email "email"
       Then only the contacts with email "email" should be displayed in the contact list

    Scenario: User searches contact by a letter
       When user searches the contact with letter "s"
       Then only the following contacts should be displayed in the contact list:   
            |name    |email                |phone     |contactType   |
            |Susmita |susmita412@gmail.com |984635346 |Personal      |  
            |Sita    |sita412@gmail.com    |984635346 |Personal      |