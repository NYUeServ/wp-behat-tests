@javascript @plugins @networkactivated
Feature: As a super admin I should verify if Custom Add User Plugin is network activated, installed and test the functionality.

  Scenario: Verify if Custom Add User is Installed and Network Activated
    Given I am logged in as "localsuperbehat"
    Then "Custom Add User" plugin is installed
    Then "Custom Add User" plugin is network activated
    Then I log out

  Scenario: Verify whether the Add New User form loads correctly and user gets added.
    Given I am logged in as "localbehat"
    Then I should visit "testbehat/wp-admin/user-new.php"
    # Add Existing User form is hidden when Custom Add User plugin is activated
    Then I should not see "Add Existing User"
    Then I should not see "Enter the email address of an existing user on this network to invite them to this site. That person will be sent an email asking them to confirm the invite."
    Then "#adduser" element is hidden
    # Add Existing User Button is hidden
    Then "#addusersub" element is hidden
    # All elements of Add New User form should be visible
    Then "#add-new-user" element has value "Add New User"
    # Add New User Button
    Then "#createusersub" element exists
    Then I should see "Create a brand new user and add them to this site."

    # Fill user credentials and add user
    Then I should visit "testbehat/wp-admin/user-new.php"
    When I fill in "Username (required)" with "tst540"
    And I fill in "Email (required)" with "tst540@nyu.edu"
    # The nth-child(5) denotes "Administrator" option from role drop down menu
    Then I click "#role > option:nth-child(5)"
    Then I click "#createusersub"
    Then I should visit "testbehat/wp-admin/user-new.php"
    Then I should visit "testbehat/wp-admin/users.php"
    # For each user a unique id is generated which does not change upon additon of new users. 6343 is the permanent id for tst540
    Then "#user-6343 > td.username.column-username" element has value "tst540"
    Then "#user-6343 > td.name.column-name" element has value "TesterWP F Tester"
    Then "#user-6343 > td.email.column-email" element has value "tst540@nyu.edu"
    Then "#user-6343 > td.role.column-role" element has value "Administrator"
    Then I log out

