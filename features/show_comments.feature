@javascript
Feature: Show comments

  Scenario: Home Page
    Given 2 published posts exist
    When I go to the home page
    And I follow "MyString" within "li.post:first-child"
    And show me the page
    Then I should see "Disqus"
