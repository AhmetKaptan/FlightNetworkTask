Feature: Flight Search
  As a user
  I want to search for flights
  So that I can find suitable options for my travel


  Background: Given I am on the Flight Network homepage
  Scenario: Search for a flight with valid criteria
    When I search for a flight from "New York" to "Los Angeles" for tomorrow
    Then I should see available flight options


  Scenario: Search for a flight with invalid criteria
    When I enter an invalid departure city
    And I enter an invalid destination city
    And I select an invalid departure date
    And I do not specify the number of passengers
    And I click on the search button
    Then I should see an error message indicating invalid search criteria
    And I should not see any search results

  Scenario: Attempt to search with invalid criteria
    When I attempt to search without specifying any criteria
    Then I should see an error message indicating invalid search criteria