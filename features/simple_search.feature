Feature: Search for contributions to legislation or candidate
  As a voter
  So that I can find one particular issue or person and all relevant material 
  I want a search bar that lets me find what I’m looking for


  Background:
    Given I am on the home page
    Given the following contributions exist:
    | donor             | recipient       |
    | Varun Pai         | Nancy Pelosi    | 
    | Ayushi Samaddar   | Ronald Reagan   | 
    | Praneet Wadge     | Ronald Reagan   |
    | Praneet Wadge     | Jerry Brown     |
    | Jeanne Buell      | Nancy Pelosi    |
    | J.A Buell         | Nancy Pelosi    |

  Scenario: Search for particular donor and specific politician (with disambiguation)
    When I fill in "Donor" with "Buell"
    And I fill in "Recipient" with "Nancy Pelosi"
    And I press "Search" 
    Then I should see the results page
    And I should see "Displaying 2 selected contributors to Nancy Pelosi"
   
  Scenario: Search for particular donor and specific politician (without disambiguation)
    When I fill in "Donor" with "Ayushi Samaddar"
    And I fill in "Recipient" with "Ronald Reagan"
    And I press "Search"
    Then I should see the results page
    And I should see "Contributions from Ayushi Samaddar to Ronald Reagan"
    And I should see "Ayushi Samaddar"
    And I should not see "Praneet Wadge"

  Scenario: Search for all contributions by one particular donor
    When I fill in "Donor" with "Praneet Wadge"
    And I press "Search"
    Then I should be on the results page
    And I should see "Ronald Reagan"
    And I should see "Jerry Brown"

  Scenario: Search for all contributions to one recipient
    When I fill in "Recipient" with "Ronald Reagan"
    And I press "Search"
    Then I should be on the results page
    And I should see "Contributions to Ronald Reagan"
    And I should see "Praneet Wadge" 
    And I should see "Ayushi Samaddar" 
