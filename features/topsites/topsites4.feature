@javascript @topsites
Feature: Topsites work

  Scenario: math_ua_263 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "math_ua_263"
    Then I should see "MATH-UA.263 Undergraduate Partial Differential Equations / Fall 2015"
    Then I log out

  Scenario: mcafall15 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "mcafall15"
    Then I should see "MEDIA AND CULTURAL ANALYSIS"
    Then I log out

  Scenario: mcc_data resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "mcc_data"
    Then I should see "MCC DATA"
    Then I should visit "wp-admin"
    Then I log out

  Scenario: nyucd18 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "nyucd18"
    Then I should see "Class Council"
    Then I log out

  Scenario: practicum1 resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "practicum1"
    Then I should see "NYU Communicative Sciences and Disorders"
    Then I log out

  Scenario: productionlab resolves
    Given I am logged in as "localsuperbehat"
    Then I should visit "productionlab"
    Then I should see "Producing the Next Class of Content Creators"
    Then I log out


