@javascript @wordpress
Feature: Admin Dashboard loads successfully

  Scenario: Wordpress admin works
    Given I am logged in as "localsuperbehat"
    And I wait for the site to load
    Then I log out