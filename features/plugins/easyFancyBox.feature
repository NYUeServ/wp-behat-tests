@javascript @plugins @networkactivated
Feature: As an admin I verify if easyFancyBox is installed, network activated and NYU configuration is set

Scenario: Verify if Easy FancyBox is installed and network activated
	Given I am logged in as "localsuperbehat"
	#Then "Easy FancyBox" plugin is installed
	Then "Easy FancyBox" plugin is installed and network activated
	Then I log out

Scenario: Check NYU configuration
	Given I am logged in as "localbehat"
	Then I should visit "testbehat/wp-admin/options-media.php"
	Then I should see "FancyBox"
	Then I should see "Media"
	# Media > Images checkbox
	Then the "fancybox_enableImg" checkbox should be checked
	Then I should see "Overlay"
	# Show the overlay around content opened in FancyBox.
	Then the "fancybox_overlayShow" checkbox should be checked
	# Close FancyBox when overlay is clicked.
	Then the "fancybox_hideOnOverlayClick" checkbox should be checked
	Then I should see "Window"
	# Close button checkbox
	Then the "fancybox_showCloseButton" checkbox should be checked
	Then I should see "Miscellaneous"
	Then I should see "Images"
	# Appearance > Show title checkbox
	Then the "fancybox_titleShow" checkbox should be checked
	# Then I should see "Youtube" (Option not present on wp.nyu.edu)
	# Autodetect
	# Then the "fancybox_autoAttributeYoutube" checkbox should be checked (Option not present on wp.nyu.edu)
	# Save Changes
	Then "#submit" element exists
	Then I log out