Feature: Integrations

  Scenario: Google Analytics
    Given the Google Analytics code is "UA-1234"
    When I go to the home page
    Then I should see "UA-1234"
