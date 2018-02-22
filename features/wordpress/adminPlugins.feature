# features/wordpress/adminPlugins.feature
@wordpress
Feature: As a admin I should be able to load the Admin Plugins page

#  @javascript
  Scenario: Plugins page loads
    Given I am logged in as "localbehat"
    Then I should visit "testbehat/wp-admin/admin.php?page=pretty-plugins.php"
    Then "div.wrap > h2" element has value "Plugins"
    Then "div#current-theme" element exists
    Then "#plugin-categories-list" element exists
    Then "div#availableplugins" element exists
    Then "div.available-theme.available-plugin" element exists
    Then "div.action-links" element exists
    # Activate - Deactivate button under plugin name
    Then "div.button-primary.button-large.material-button > a.activate-deactivate" element exists
    Then "input#theme-search-input" element exists
    Then I log out