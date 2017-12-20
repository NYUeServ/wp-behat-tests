@javascript @plugins @networkactivated 
Feature: As a super admin, I verify if Google Analytics is installed, visible on sidebar and NYU configuration is set.

Scenario: Verify if Google Analytics is Installed and Network Activated.
  Given I am logged in as "localsuperbehat"
  #Then "Google Analytics" plugin is installed
  Then "Google Analytics" plugin is installed and network activated

  # Google Analytics is visible on Sidebar and NYU Configuration is set.
  Then I should visit "wp-admin/network/settings.php"
  Then I should see "Google Analytics"
  Then I should visit "wp-admin/network/settings.php?page=google-analytics"
  Then I should see "Basic Network Tracking Settings"
  # Admin Pages Tracking
  Then the "track_admin" field should contain "1"
  #Domain Mapping
  Then the "domain_mapping" field should contain "0"
  Then I should see "Advanced Network Tracking Settings"
  #IP Anonymization
  Then the "anonymize_ip" field should contain "0"
  #Display Advertising
  Then the "display_advertising" field should contain "0"
  #Tracking method
  Then the "track_method" field should contain "universal"
  Then "#ga-network-settings > form> p > input.button-primary" element exists
  Then I log out