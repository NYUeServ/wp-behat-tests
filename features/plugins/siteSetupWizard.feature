@javascript @plugins @networkactivated
Feature: As a user I should be able to create new site using Site Setup Wizard Plugin.

  @verifyNetworkSettings
  Scenario: Verify Site Setup Wizard Plugin is installed and Network Activated
    Given I am logged in as "localsuperbehat"
    #Then "Site Setup Wizard" plugin is installed
    Then "Site Setup Wizard" plugin is installed and network activated
    Then I log out

  @createSite
  Scenario: Steps to create new site
    Given I am logged in as "localbehat"
    Then I should visit "create"
    Then I should not see "You must first log in to create new site."
    Then I click "#ssw-steps > div > div > div.ssw-xtra-block > a" if visible
    #Then I wait for "#ssw-steps > div > div > fieldset > div.ssw-selection > input.ssw-btn-primary" element
Then I wait for "#ssw-steps > div > div > fieldset > input:nth-child(2)" element
    Then I press "Create a custom site"
    Then I wait for "#ssw-steps > div > div > fieldset > input:nth-child(1)" element

    # Step1
    Then I press "Teaching & Learning"
    Then I wait for "ssw-admin-email" form element

   
