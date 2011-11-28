Feature: Sitemap

  Scenario:
    Given 2 published posts exist
    And I am on the sitemap path with format xml
    Then I should see the xml file with sitemap tags
