Feature: The Santa site shows different things to different users 
  so that children don't know what they're getting for Christmas
  but relatives know what they would like 
  and whether someone has already bought it for them


  Scenario: User creation
    Given I am on the home page
    And I create a new user
    Then I can see the new user details

