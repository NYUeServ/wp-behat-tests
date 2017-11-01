# features/wordpress/networkAdminThemes.feature
@wordpress
Feature: As a super admin I should be able to load Network Admin Themes page

#  @javascript
  Scenario: Network Admin Themes page loads successfully
    Given I am logged in as "localsuperbehat"
    Then I should visit "wp-admin/network/themes.php"
    Then "div.wrap > h1" element has value "Themes"
    Then "#wpbody-content > div.wrap > a" element has value "Add New"
    Then "form#bulk-action-form" element exists
    Then "table.wp-list-table.widefat.plugins" element exists
    Then "th#name" element has value "Theme"
    Then "th#description" element has value "Description"
    # TODO: Need to identify goutte driver issue for Custom Image.
    # Then "th#image" element has value "Custom Image"
    Then "tbody#the-list" element exists
    Then "input#theme-search-input" element exists
    Then "input#search-submit" element exists
    Then I log out