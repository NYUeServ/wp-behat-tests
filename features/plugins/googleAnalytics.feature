@javascript @plugins @networkactivated 
Feature: As a super admin, I verify if Google Analytics is installed, visible on sidebar and NYU configuration is set.

Scenario: Verify if Google Analytics is Installed and Network Activated.
  Given I am logged in as "localsuperbehat"
  #Then "Google Analytics" plugin is installed
  Then "Beehive Pro" plugin is installed and network activated

  # Beehive Pro
  Then I should visit "wp-admin/network/settings.php"
  Then I should see "Beehive Pro"
  Then I should visit "wp-admin/network/admin.php?page=beehive-settings"
  Then I should see "Settings"
  # Admin Pages Tracking
  Then "#beehive-settings-track-admin" element exists
  #IP Anonymization
  Then "#beehive-settings-anonymize" element exists
  #Display Advertising
  Then "#beehive-settings-advertising" element exists
  Then I log out
