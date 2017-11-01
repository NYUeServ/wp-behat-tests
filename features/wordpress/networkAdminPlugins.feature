# features/networkAdminPlugins.feature
@wordpress
Feature: As a super admin I should be able to load Network Admin Plugins page

  Scenario: Network Admin Plugins page loads successfully
    Given I am logged in as "localsuperbehat"
    Then I should visit "wp-admin/network/plugins.php"
    Then "div.wrap > h1" element has value "Plugins"
    Then "#wpbody-content > div.wrap > a" element has value "Add New"
    Then "form#bulk-action-form" element exists
    Then "table.wp-list-table.widefat.plugins" element exists
    Then "th#name" element has value "Plugin"
    Then "th#description" element has value "Description"
    # TODO: Need to identify goutte driver issue for Image.
    # Then "th#image" element has value "Image"
    Then "tbody#the-list" element exists
    Then "input#plugin-search-input" element exists
    Then I log out