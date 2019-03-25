# features/wordpress/adminPlugins.feature
@wordpress 
Feature: As a admin I should be able to load the Admin Plugins page

#  @javascript
  Scenario: Plugins page loads
    Given I am logged in as "localbehat"
    Then I should visit "testbehat/wp-admin/admin.php?page=pretty-plugins.php"
    Then "div.wrap > h1" element has value "Plugins"
    Then "div#current-theme" element exists
    Then "#plugin-categories-list" element exists
    Then "div#availableplugins" element exists
    # css selector of boxes containing plugins
    Then "div.available-plugin" element exists
    Then "div.action-links" element exists
    # Activate - Deactivate button under plugin name
    Then "div.action-links>a.button-primary.button-large.material-button" element exists
    Then "input#theme-search-input" element exists
    Then I log out
