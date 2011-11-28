Feature: Creating posts

  Scenario: Creating a post
    Given I am logged in
    When I visit the panel
    And I fill the post form
    And I press "Create Post"
    Then I should see "My post" within ".post .title"
