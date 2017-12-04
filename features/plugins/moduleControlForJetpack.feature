@javascript @plugins @networkactivated
Feature: As a network admin I verify if module control for jetpack is installed, network activated

Scenario: Module control for Jetpack is installed, network activated and check functionality
	Given I am logged in as "localsuperbehat"
	#Then "Module Control for Jetpack" plugin is installed
	Then "Module Control for Jetpack" plugin is installed and network activated
	Then I should visit "wp-admin/network/settings.php"
	Then I should see "Jetpack Module Control"
	# Verify is Subsite Override is OFF to not allow individual site administrators
	# to manage their own settings for Jetpack Module Control
	Then the "jetpack_mc_subsite_override" checkbox should not be checked
	# Verify if Manual Control is ON to Prevent Jetpack from auto-activating (new) modules
	Then the "jetpack_mc_manual_control" checkbox should be checked
	# Verify if Development mode is ON to Use Jetpack modules without a WordPress.com connection
	Then the "jetpack_mc_development_mode" checkbox should be checked
	Then I log out
