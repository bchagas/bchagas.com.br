Feature: Approve post
  Scenario: Default
    Given I am logged in
    When I visit the panel
    And I fill in "post_title" with "Hello World"
    And I fill in "post_body" with "Lorem ipsum"
    And I fill in "post_tag_list" with "general"
    And I press "Create Post"
    And I visit the panel
    And I follow "Hello World"
    And I follow "Publish"
    And I go to the home page
    Then I should see "Hello World"
  
