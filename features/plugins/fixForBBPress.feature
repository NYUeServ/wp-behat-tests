@javascript @plugins @networkactivated
Feature: As a super admin, I verify if Fix for bbPRess plugin is installed and network activated.

Scenario: Fix for bbPRess plugin is installed and network activated so that bbPress plugin is not affected by other plugins.
  Given I am logged in as "localsuperbehat"
  Then "Fix for bbPress" plugin is installed
  Then "Fix for bbPRess" plugin is network activated
  Then I log out