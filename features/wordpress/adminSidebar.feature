# features/wordpress/adminSidebar.feature
@wordpress
Feature: As a admin I should be able to load the elements on the Admin Side bar

  Scenario: Admin Sidebar loads
    Given I am logged in as "localsuperbehat"
    Then I should see "Dashboard"
    Then "div#adminmenuwrap" element exists
    Then "li#menu-dashboard" element exists
    Then "li#menu-settings" element exists
    Then "li#menu-pages" element exists
    Then "li#menu-media" element exists
    Then "li#menu-comments" element exists
    Then "li#menu-appearance" element exists
    Then "li#menu-users" element exists
    Then "li#menu-tools" element exists
    Then "li#menu-posts" element exists
    Then I log out