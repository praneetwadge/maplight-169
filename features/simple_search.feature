Feature: Search for contributions to legislation or candidate
  As a voter
  So that I can find one particular issue or person and all relevant material 
  I want a search bar that lets me find what I’m looking for


  Background:
    Given I am on the home page

  Scenario: Search for particular donor and specific politician (with disambiguation)
    When I fill in "Donor" with "Jeanne Buell"
    And I fill in "Recipient" with "Nancy Pelosi"
    And I press "Search"
    Then I should be on the disambiguation page # > one person id matches!
    When I check the following people: Jeanne Buell, J A Buell 
    Then I should see the results page
    And I should see "Displaying 2 selected contributors to Nancy Pelosi"
   
  Scenario: Search for particular donor and specific politician (without disambiguation)
    When I fill in "Donor" with "Ayushi Samaddar"
    And I fill in "Recipient" with "Ronald Reagan"
    And I press "Search"
    Then I should not be on the disambiguation page # only one Ayushi Samaddar =P
    Then I should see the results page
    And I should see "Contributions from Ayushi Samaddar to Ronald Reagan"

  Scenario: Search for all contributions by one particular donor
    When I fill in "Donor" with "Praneet Wadge"
    And I leave "Recipients" blank
    And I press "Search"
    Then I should see the disambiguation page 
    And I should see all donors that match "Praneet" 
    And I should see all donors that match "Wadge"
    And I should see all donors that match "Praneet Wadge"
    

	Scenario: Search for all contributions to one recipient
  	When I fill in "Recipients" with "Ronald Reagan"
  	And I leave "Donor" blank
  	And I press "Search"
  	Then I should see the "Results Page"
  	And I should see "Contributions to Ronald Reagan"
  	And I should see all donors who gave money to "Ronald Reagan"

