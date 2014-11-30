Feature: testing static page content

  Scenario:Santa is coming to town 
    When Santa is in town 
    Then he should see the town page

  Scenario:Santa is allowed to check his list
    When Santa is in town
    Then he can check his list

  Scenario:Santa is checking his list
    When Santa is checking his list
    And there are naughty and nice children on the list
    Then he knows who has been naughty or nice
