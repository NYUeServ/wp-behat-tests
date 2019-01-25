@javascript @topsites
Feature: Topsites work

  Scenario: cas-envstudiesblog resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "cas-envstudiesblog"
    Then I should see "NYU ENVIRONMENTAL STUDIES BLOG"
    Then I log out

  Scenario: chunaralab resolves
    Given I am logged in as "localsuperbehat"
    Then  I should visit "chunaralab"
    Then I should see "Welcome to the Lab Page of Rumi Chunara, Assistant Professor at New York University."
    Then I log out

  Scenario: connect resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "connect"
    Then I should see "Your Source for IT News at New York University"
    Then I log out

  Scenario: eapcities resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "eapcities"
    Then I should see "English for Academic Purposes"
    Then I log out

  Scenario: gsas-ifa_foundations2015 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "gsas-ifa_foundations2015"
    Then I should see "IFA - Foundations I for MA Students"
    Then I log out
