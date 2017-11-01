@javascript @topsites
Feature: Topsites work

  Scenario: gallatin-eportfoliotemplate resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "gallatin-eportfoliotemplate"
    Then I should see "AN NYU GALLATIN EPORTFOLIO"
    Then I log out

  Scenario: itsecurity resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "itsecurity"
    Then I should see "NYU IT SECURITY NEWS AND ALERTS"
    Then I log out

  Scenario: testing resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "testing"
    Then I should see "Your Name, Professional School Counselor"
    Then I log out

  Scenario: tlt_template4 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "tlt_template4"
    Then I should see "TLT_Template4 @ NYU site"
    Then I log out

  Scenario: gallatin-eportfolios resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "gallatin-eportfolios"
    Then I should see "Archiving, Sharing, and Showcasing Student Work"
    Then I log out
