@javascript @wordpress @wordpressLogin
Feature: Admin Dashboard loads successfully

  Scenario: Wordpress local login works
    Given I am logged in as "localsuperbehat"
    Then I log out