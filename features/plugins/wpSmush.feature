@javascript @plugins @networkactivated
Feature: As a super admin I should verify if WP Smush Plugin is network activated, installed and test the functionality(settings).

Scenario: Smush Pro is installed, network activated, visible on Sidebar and verify NYU configuration
  Given I am logged in as "localsuperbehat"
  #Then "WP Smush Pro" plugin is installed
  Then "Smush Pro" plugin is installed and network activated

  # Check network settings
  #Then I should visit "wp-admin/network/settings.php"
  #Then I should see "Smush Pro"
  Then I should visit "wp-admin/network/admin.php?page=smush"
  Then I should see "SMUSH"
  Then I should see "SETTINGS"
  #Then I should see "Enable Network wide settings"
  Then I should see "Use network settings for all the sub-sites."
  #Then the "wp-smush-networkwide" checkbox should be checked
  #Then I should see "Automatically smush my images on upload"
  #Then the "wp-smush-auto" checkbox should be checked
  # The following image sizes will be optimized by WPSmush(table of checkboxes)
  #Then "div.wp-smush-image-size-list" element exists
  # UPDATE SETTINGS
  #Then "#wp-smush-save-settings" element exists
  # Preserve image EXIF data
  #Then the "wp-smush-keep_exif" checkbox should not be checked
  # Resize original images
  #Then the "wp-smush-resize" checkbox should not be checked
  # Super-smush my images
  #Then the "wp-smush-lossy" checkbox should not be checked
  # Include my original full-size images
  #Then the "wp-smush-original" checkbox should not be checked
  # Make a copy of my original images
  #Then the "wp-smush-backup" checkbox should not be checked
  # Convert PNG to JPEG (lossy)
  #Then the "wp-smush-png_to_jpg" checkbox should not be checked
  Then I log out

Scenario: Smush Pro visible in Media Sidebar on testbehat and verify settings on wp-smush-bulk page
  Given I am logged in as "localsuperbehat"
  Then I should visit "testbehat/wp-admin/upload.php"
  # Media > WP Smush
  Then I should see "Smush Pro"
  Then I should visit "/testbehat/wp-admin/upload.php?page=smush"
  Then I should see "All attachments have been smushed."
  #Then "#wp-smush-stats-box > div > h3" element has value "STATS"
  Then "#wp-smush-settings-box > div > h3" element has value "Settings"
  # RE_CHECK IMAGES
  #Then "#wp-smush-stats-box > div.wp-smush-container-header.box-title > div > button" element exists
  # ENABLE SUPER-SMUSH
  #Then "#wp-smush-stats-box > div.box-content > div.row.super-smush-attachments > span.float-r.wp-smush-stats.wp-smush-lossy-disabled-wrap > a" element exists
  # ENABLE IMAGE RESIZING
  #Then "#wp-smush-stats-box > div.box-content > div.row.smush-resize-savings > span.float-r.wp-smush-stats > a" element exists
  Then I log out
