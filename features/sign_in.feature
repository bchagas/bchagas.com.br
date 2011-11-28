Feature: Sign in

  Scenario: Failed sign in
    Given I am on the new user session page
    When I fill in "Email" with ""
    And I fill in "Password" with ""
    And I press "Sign in"
    Then I should see "Invalid email or password"
