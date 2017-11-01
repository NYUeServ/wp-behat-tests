@javascript @topsites
Feature: Topsites work

  Scenario: proust2014 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "proust2014"
    Then I should see "MARCELLE CLEMENTS, FALL 2014"
    Then I should visit "wp-admin"
    Then I log out

  Scenario: sa_art_project resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "sa_art_project"
    Then I should see "An Exploration of the Role and Social Change"
    Then I log out

  Scenario: shanghai-academicadvising resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "shanghai-academicadvising"
    Then I should see "NYU Shanghai Academic Advising"
    Then I log out

  Scenario: artedtemplate resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "artedtemplate"
    Then I should see "a template for your fieldwork experience"
    Then I should visit "wp-admin"
    Then I log out

  Scenario: careerdevelopment-nyu385_test1 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "careerdevelopment-nyu385_test1"
    Then I should see "Welcome to Web Publishing @ NYU"
    Then I log out
