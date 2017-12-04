@javascript @plugins @networkactivated
Feature: As a super admin, I verify if Pretty Plugins is installed, NYU configuration is set and functionality is correct

Scenario: Verify if Pretty Plugins is Installed and Network Activated
	Given I am logged in as "localsuperbehat"
	#Then "Pretty Plugins" plugin is installed
	Then "Pretty Plugins" plugin is installed and network activated
	Then I log out

Scenario: Pretty Plugins is visible on Sidebar and NYU Configuration is set
	Given I am logged in as "localsuperbehat"
	Then I should visit "wp-admin/network/settings.php"
	Then I should see "Pretty Plugins"
	Then I should visit "wp-admin/network/settings.php?page=pretty-plugins.php"
	Then I should see "Pretty Plugins Settings"
	Then I should see "General Settings"
	Then "wmd_prettyplugins_options[setup_mode]" select element has selected value "False"
	Then "wmd_prettyplugins_options[theme]" select element has selected value "Quick Sand"
	Then I should see "Theme and Appearance Settings"
	Then "wmd_prettyplugins_options[plugins_links]" select element has selected value "Plugin custom URL"
	Then "wmd_prettyplugins_options[plugins_auto_screenshots]" select element has selected value "False"
	Then "wmd_prettyplugins_options[plugins_auto_screenshots_by_name]" select element has selected value "False"
	Then "wmd_prettyplugins_options[plugins_auto_screenshots_wp]" select element has selected value "True"
	Then I should see "Labels"
	Then the "wmd_prettyplugins_options[plugins_page_title]" field should contain "Plugins"
	Then "#wpbody-content > div.wrap > form > p > input" element exists
	Then I log out

Scenario: Verify whether plugins are classified into categories
	Given I am logged in as "localbehat"
 	Then I should visit "testbehat/wp-admin/admin.php?page=pretty-plugins.php"
 	Then I should see "CHOOSE CATEGORY TO DISPLAY:"
 	# Pretty Plugins Categories
 	Then "#plugin-categories-list > li > a" element has value "All"
 	Then "#plugin-categories-list > li > a.category1" element has value "Admin Tools"
 	Then "#plugin-categories-list > li > a.category3" element has value "Customizing Your Site"
 	Then "#plugin-categories-list > li > a.category2" element has value "Interacting With Users"
 	Then "#plugin-categories-list > li > a.category5" element has value "Media"
 	Then "#plugin-categories-list > li > a.category4" element has value "Other"
 	Then "#plugin-categories-list > li > a.category6" element has value "Social Media"
 	# Default categories
 	Then I should see "SORT BY:"
 	Then "#plugin-status-list > li > a.all" element has value "All"
 	Then "#plugin-status-list > li > a.active" element has value "Active"
 	Then "#plugin-status-list > li > a.inactive" element has value "Inactive"
