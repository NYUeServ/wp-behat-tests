@javascript @plugins @networkactivated
Feature: As a user I should be able to create new site using Site Setup Wizard Plugin.

  @verifyNetworkSettings
  Scenario: Verify Site Setup Wizard Plugin is installed and Network Activated
    Given I am logged in as "localsuperbehat"
    #Then "Site Setup Wizard" plugin is installed
    Then "Site Setup Wizard" plugin is installed and network activated
    Then I log out

  @createSite
  Scenario: Steps to create new site
    Given I am logged in as "localbehat"
    Then I should visit "create"
    Then I should not see "You must first log in to create new site."
    Then I click "#ssw-steps > div > div > div.ssw-xtra-block > a" if visible
    Then I wait for "#ssw-steps > div > div > fieldset > div.ssw-selection > input.ssw-start-btn" element

    # Step1
    Then I press "Teaching & Learning"
    Then I wait for "ssw-admin-email" form element

    # Step 2
    Then I fill in "ssw-admin-email" with "tst540@nyu.edu"
    Then I select "teachinglearning" from "ssw-site-category"
    Then I fill in "ssw-site-address" with "testssw"
    Then I fill in "ssw-site-title" with "Test Site Setup Wizard"
    Then I select "3" from "site_privacy"
    Then I check "ssw-site-terms-input"
    Then I press "ssw_next_btn"
    Then I wait for "#ssw-themes-agency-pro" element

    # Step 3
    Then I select "agency-pro" from "select_theme"
    # Next Button
    Then I wait for "#ssw-steps > div > div > fieldset > div > div.ssw-proceed.ssw-field > input" element
    Then I click "#ssw-steps > div > div > fieldset > div > div.ssw-proceed.ssw-field > input"
    Then I wait for "Admin Tools" text

    # Step 4
    Then scroll to element with class "ssw-header-wrapper"
    Then I check "Lock Posts"
    Then I check "TumblrWidget"
    Then I press "Finish"
    Then I wait for "Your new site is now ready at" text
    Then I should see "Your new site is now ready at"
    Then I should see "/testssw"
    # Log out
    Then I should visit "wp-admin"
    Then I log out

  @verifySite
  Scenario: Verify if the test site testssw was created using the Site Setup Wizard
    Given I am logged in as "localsuperbehat"

    # Check Privacy setting
    Then I should visit "testssw/wp-admin/options-reading.php"
    # Theme Settings - Genesis
    Then the "genesis-settings[update]" checkbox should be checked

    # Check Site Title and site admin email
    Then I should visit "testssw/wp-admin/options-general.php"
    Then the "blogname" field should contain "Test Site Setup Wizard"
    Then the "new_admin_email" field should contain "tst540@nyu.edu"

    # Check the plugins installed
    Then I should visit "testssw/wp-admin/plugins.php"
    Then "Lock Posts" plugin is activated
    Then "Tumblr Widget" plugin is activated

    # Check site type and current theme
    Then I should visit "wp-admin/network/sites.php"
    Then I fill in "site-search-input" with "testssw"
    Then I press "Search Sites"
    Then I wait for "#the-list > tr > td.blogname.column-blogname.has-row-actions.column-primary > strong > a" element
    Then I follow "testssw"
    Then I follow "site-settings"
    Then the "nsd_ssw_site_type" field should contain "Teaching & Learning"
    Then the "current_theme" field should contain "Agency Pro"
    # Log out
    Then I log out

  @deleteSite
  Scenario: Delete the testssw site
    Given I am logged in as "localsuperbehat"
    Then I should visit "wp-admin/network/sites.php"
    Then I fill in "site-search-input" with "testssw"
    Then I press "Search Sites"
    Then I wait for "#the-list > tr > td.blogname.column-blogname.has-row-actions.column-primary > div > span.delete > a" element
    Then I click "#the-list > tr > td.blogname.column-blogname.has-row-actions.column-primary"
    Then I follow "Delete"
    Then I wait for "#submit" element
    Then I press "Confirm"
    Then I log out