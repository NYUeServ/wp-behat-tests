@javascript @plugins @networkactivated
Feature: As a super admin I should verify if Multisite Theme Manager Plugin is installed and NYU configuration is set

  Scenario: Verify if Multisite Theme Manager is Installed and Network Activated
    Given I am logged in as "localsuperbehat"
    #Then "Multisite Theme Manager" plugin is installed
    Then "Multisite Theme Manager" plugin is installed and network activated
    Then I log out

  Scenario: Multisite Theme Manager is visible on Sidebar and NYU configuration is set
    Given I am logged in as "localsuperbehat"
    Then I should visit "wp-admin/network/settings.php"
    Then I should see "Multisite Theme Manager"
    Then I should visit "wp-admin/network/settings.php?page=multisite-theme-manager.php"
    Then I should see "Multisite Theme Manager Settings"
    Then I should see "General Settings"
    # Verifying Setup Mode is set Setup Mode Disabled
    Then "#wpbody-content > div.wrap > form > table > tbody > tr > td > select > option:nth-child(2)" element is selected
    Then the "wmd_prettythemes_options[theme]" field should contain "standard/3-eight"
    Then I should see "Theme and Appearance Settings"
    Then the "Author Link" checkbox should be checked
    Then the "Custom Link" checkbox should be checked
    Then the "Tags" checkbox should be checked
    Then the "Version" checkbox should be checked
    # Verifying Auto Load Screenshot With Correct Name is set false
    Then "#wpbody-content > div.wrap > form > table > tbody > tr:nth-child(2) > td > select > option:nth-child(2)" element is selected
    Then the "wmd_prettythemes_options[themes_page_title]" field should contain "Themes"
    Then the "wmd_prettythemes_options[themes_page_description]" field should contain ""
    Then the "wmd_prettythemes_options[themes_link_label]" field should contain "Learn more about theme"
    Then "#wpbody-content > div.wrap > form > p > input" element exists
    Then I log out
