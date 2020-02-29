@plugins @networkactivated
Feature: As a user I should be able to create new site using newBlogTemplate Plugin.

 # @javascript
 # Scenario: Verify New Blog Templates is installed and Network Activated
 #   Given I am logged in as "localsuperbehat"
    #Then "New Blog Templates" plugin is installed
 #   Then "New Blog Templates" plugin is installed and network activated
 #   Then I log out

  @javascript
  Scenario: Steps to create new site
    Given I am logged in as "localbehat"
    Then I should visit "select-site-type"
    Then I follow "create-template"
    Then I should not see "You must first log in to create new site."
    Then I wait 2 sec
    Then I fill in "blogname" with "testnewblogtemplate"
    Then I fill in "blog_title" with "TEST SITE FOR NEW BLOG TEMPLATE"
    Then I select "en" from "site-language"
    Then scroll to element with class "submit"
    Then I select "0" from "new_blog_public"
    Then I press "Create Site"
    Then I wait 5 sec
    Then I should see "testnewblogtemplate is your new site"

  @javascript
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
    Then the "admin_email" field should contain "it-wp-admin+localbehat@nyu.edu"
    Then the "blogdescription" field should contain "Just another Web Publishing @ NYU site"
    Then the "WPLANG" field should contain "en_US"

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
