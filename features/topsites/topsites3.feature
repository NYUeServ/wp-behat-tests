@javascript @topsites
Feature: Topsites work

  Scenario: hr-community resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "hr-community"
    Then I should see "WELCOME TO HR COMMUNITY"
    Then I log out

  Scenario: hr-nyubenefitsguide resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "hr-nyubenefitsguide"
    Then I should see "Benefits Overview Guide"
    Then I log out

  Scenario: itsecurity resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "itsecurity"
    Then I should see "NYU IT SECURITY NEWS AND ALERTS"
    Then I log out

  Scenario: ls-nynow resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "ls-nynow"
    Then I should see "New York Now"
    Then I log out

  Scenario: ls-thinkglobalteachlocal resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "ls-thinkglobalteachlocal"
    Then I should see "Thinking Global, Teaching Local"
    Then I log out