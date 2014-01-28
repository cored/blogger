Feature: Listing all articles
  As a user 
  In order to see the articles created
  I want to go to a listing article url and see all articles

  Scenario: There is no articles 
    Given there is no articles created 
    When I visit the list articles page
    Then I should see the message "There is no articles created" 

  Scenario: There are some articles created 
    Given the articles
      |title          |body                       |
      |First article  |This is the first article  |
      |Second article |This is the second article |
    When I visit the list articles page
    Then I should see the message "First article"
     And I should see the message "Second article" 
