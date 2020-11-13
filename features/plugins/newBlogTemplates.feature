@plugins @networkactivated @newtemplate
Feature: As a user I should be able to create new site using newBlogTemplate Plugin.

 # @javascript
 # Scenario: Verify New Blog Templates is installed and Network Activated
 #   Given I am logged in as "localsuperbehat"
    #Then "New Blog Templates" plugin is installed
 #   Then "New Blog Templates" plugin is installed and network activated
 #   Then I log out

  @javascript @newtemplatecreate
  Scenario: Steps to create new site
    Given I am logged in as "localbehat"
    Then I should visit "create"
    # Check if cancel button is there, if it is, cancel current creation and start fresh
    Then I click "#ssw-container-for-ajax > div > div > div.ssw-xtra-block > button"
    Then I wait 10 sec
    # Click the Administrative template
    Then I click "#ssw-steps > div > div > fieldset > input.ssw-btn-primary.ssw-btn-format.ssw-field--focus-onload" if visible
    Then I should not see "You must first log in to create new site."
    Then I wait 10 sec
    Then I click "#ssw-steps > div > div > fieldset > input:nth-child(4)" if visible
    Then I wait 10 sec
    # Fill in site creation form
    Then I select "nocategoryselected" from "site_category"
    Then I fill in "ssw-admin-email" with "it-wp-admin@nyu.edu"
    Then I fill in "ssw-site-address" with "testnewblogtemplate"
    Then I fill in "ssw-site-title" with "TEST SITE FOR NEW BLOG TEMPLATE"
    Then scroll to element with class "ssw-primary-btn"
    Then I select "0" from "site_privacy"
    Then I check "ssw-site-terms-input"
    Then I click "#ssw-steps > div > div.ssw-proceed.ssw-field > input"
    Then I wait 10 sec
    # Scroll to bottom and select template
    Then scroll to element with class "ssw-primary-btn"
    Then I click "#blog-template-radio-51" if visible
    Then I press "ssw_next_btn"
    Then I wait 10 sec
    Then I should see "Your new site is now ready"

  @javascript @newtemplateverify
  Scenario: Verify if all the elements of the new sites have the correct features
    Given I am logged in as "localsuperbehat"
    # Check Privacy setting
    # TODO: Enable checking Privacy set of test site once it is functioning for Plugin
    # Then I should visit "testnewblogtemplates/wp-admin/options-reading.php"
    # Then the "blog-norobots" checkbox should be checked
    # Check remaining settings
    Then I should visit "wp-admin/network/sites.php"
    Then I fill in "site-search-input" with "testnewblogtemplate"
    Then I press "Search Sites"
    Then I wait 2 sec
    Then I follow "testnewblogtemplate"
    Then I follow "site-settings"
    Then the "blogname" field should contain "TEST SITE FOR NEW BLOG TEMPLATE"
    Then the "admin_email" field should contain "it-wp-admin@nyu.edu"
    Then the "blogdescription" field should contain "NYU Classes Supplemental Site"

  @newtemplatedelete
  Scenario: Delete the testnewblogtemplate site
    Given I am logged in as "localsuperbehat"
    Then I should visit "wp-admin/network/sites.php"
    Then I fill in "site-search-input" with "testnewblogtemplate"
    Then I press "Search Sites"
    Then I wait 2 sec
    Then I follow "Delete"
    Then I wait 2 sec
    Then I press "Confirm"
    Then I log out
