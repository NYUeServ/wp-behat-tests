@javascript @plugins @networkactivated
Feature: As a super admin, I verify whether Default Theme plugin is installed, network activated and NYU Configuration is set.

Scenario: Verify whether Default Theme Plugin is installed and Network Activated
  Given I am logged in as "localsuperbehat"
  Then "Default Theme" plugin is installed
  Then "Default Theme" plugin is network activated

  # Check NYU Configuration (Network Admin Settings)
  Then I should visit "wp-admin/network/settings.php"
  Then I should see "Theme Settings"
  Then I should see "Default Theme"
  Then I should see "Default Theme applied to new blogs."
  # Default Theme select box
  Then "default_theme" select element has selected value "twentyfifteen"
  Then I log out