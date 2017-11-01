@javascript @topsites
Feature: Topsites Work

  Scenario: advwritingseminar2015 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "advwritingseminar2015"
    Then I should see "Marcelle Clements / Fall 2015"
    Then I should visit "wp-admin"
    Then I log out

  Scenario: Brainzatwerk resolves
    Given I am logged in as "localsuperbehat"
    Then  I should visit "brainzatwerk"
    Then I should see "brainzatwerk"
    Then I log out

  Scenario: sa_art_project resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "sa_art_project"
    Then I should see "Art and Change In South Africa"
    Then I log out

  Scenario: artedtemplate resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "artedtemplate"
    Then I should see "Current Issues in Art Education: Critical Pedagogy, Contemporary Art & The Educational Turn"
    Then I should visit "wp-admin"
    Then I log out

  Scenario: beyondlanguage2015 resolves
    Given I am logged in as "localsuperbehat"
    Then  I should visit "beyondlanguage2015"
    Then I should see "Beyond Language"
    Then I log out

