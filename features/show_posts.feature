Feature: Show Posts

  Scenario: Home Page
    Given 7 published posts exist with tag_list: "ror"
    When I go to the home page
    And I should see 5 posts
    And I should see "ror" as keyword
    And I should see blog description as meta tag
    And I should see blog rss
    And I should see blog description on page title

  Scenario: Textile
    Given a post exists with title: "Textile", body: "Simple **textile**", tag_list: "ror"
    When I go to Textile's post page
    Then I should see "textile" within "strong"
    And I should see "ror" as keyword
    And I should see "Textile" within "title"

  Scenario: Syntax Highlight
    Given a post exists with title: "Highlight", body: "<pre><code>def helloworld; end</code></pre>"
    When I go to Highlight's post page
    Then I should see "helloworld" within "code"

  Scenario: RSS
    Given 5 published posts exist
    When I visit "/posts.rss"
    Then I should see 5 rss items
    And I should see blog information

  Scenario: Post
    Given a post exists with title: "My Post", body: "Simple *post* about me", description: "my description", aasm_state: "published"
    When I go to the home page
    And follow "My Post"
    Then I should see post description as meta tag
