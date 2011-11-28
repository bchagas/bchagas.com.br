Feature: Editing posts

  Scenario: Default
    Given I am logged in
    And the logged user has a post with title: "Edit it"

    When I visit the panel
    And I follow "Edit it"
    Then I should see "New post" within ".new-post"

    When I fill in "Title" with "Title Updated"
    And I press "Update Post"
    Then a post should exist with title: "Title Updated"
