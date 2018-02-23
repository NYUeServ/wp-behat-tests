# features/wordpress/adminThemes.feature
@javascript @wordpress
Feature: As an site admin I should be able to load the Themes page of the site

  Scenario: Admin Themes page loads
    Given I am logged in as "localbehat"
    Then I should visit "testbehat/wp-admin/themes.php?page=multisite-theme-manager.php"
    Then "div.wrap > h2" element has value "Themes"
    Then "div.wrap > div.theme-categories" element exists
    Then "input#theme-search-input" element exists
    Then "div.theme-browser" element exists
    Then "div.theme.active" element exists
    Then "div.theme.active > div.theme-screenshot" element exists
    # Theme-name container
    Then "div.theme.active > div.theme-id-container > h3.theme-name" element exists
    # Theme actions (Activate, Preview and Customize)
    Then "div.theme.active > div.theme-id-container > div.theme-actions" element exists
    Then I log out