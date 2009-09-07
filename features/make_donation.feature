Feature: Make donation
  In order to support Escape Artists
  As a donor
  I want to indicate my preferences
  
  Scenario: Happy path
    Given I am on the home page
    When I fill in "My email address" with "john@example.org"
     And I fill in "My name" with "John Doe"
     And I fill in "I want to donate" with "10" 
     And I choose "This is a one-time donation."
     And I check "Escape Pod"
     And I check "Pseudopod"
     And I check "PodCastle"
     And I press "I'm ready!"
    Then I should see "Thank you!"
     And there should be a donor record
     And there should be a one-time donation record
     And there should be 3 podcast donation records
     
    
  
