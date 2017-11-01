# features/networkAdminSidebar.feature
@javascript @wordpress
Feature: As a super admin I should be able to load Network Admin Sidebar

  Scenario: Network Admin Sidebar loads
    Given I am logged in as "localsuperbehat"
    Then I should see "Dashboard"
    Then "div#adminmenuwrap" element exists
    Then "li#menu-dashboard" element exists
    Then "li#menu-settings" element exists
    Then "li#menu-users" element exists
    Then I log out