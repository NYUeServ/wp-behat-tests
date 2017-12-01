@javascript @plugins @networkactivated
Feature: As a network admin, I verify if Avatars for Multisite is installed, network activated and test functionality

Scenario: Verify if Avatars for Multisite is installed and network activated
	Given I am logged in as "localsuperbehat"
	#Then "Avatars For Multisite" plugin is installed
	Then "Avatars For Multisite" plugin is network activated
	Then I log out

Scenario: Verify the functionality 
	Given I am logged in as "localbehat"
	Then I should visit "wp-admin/options-general.php"
	Then I should see "Site Avatar"
	Then I should visit "wp-admin/options-general.php?page=blog-avatar"
	Then "#wpbody-content > div.wrap > form > p > img" element exists
	Then I should see "Upload New Avatar"
	Then "#avatar_file" element exists
 	# Then I should see 'This is your "site" avatar. It will appear whenever your blog is listed (for example, on the front page of the site).'
	Then "#wpbody-content > div.wrap > form > p.submit > input.button-primary" element exists
	Then "#wpbody-content > div.wrap > form > p.submit > input.button" element exists
	Then "#wpbody-content > div.wrap > form > p.submit > input.button-secondary" element exists

	# Verify "Your Avatar" option under Users tab
	Then I should visit "wp-admin/users.php"
	Then I should see "Your Avatar"
	Then I should visit "wp-admin/users.php?page=user-avatar"
	Then I should see "Upload New Avatar"
	Then I log out
