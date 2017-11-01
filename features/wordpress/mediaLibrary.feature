# features/wordpress/mediaLibrary.feature
@javascript @wordpress
Feature: As a site admin I should be able to load the Media Library page

  Scenario: Verify if Media Library page loads
    Given I am logged in as "localbehat"
    Then I should visit "testbehat/wp-admin/upload.php"
    Then "div.wrap > h1" element has value "Media Library"
    Then "#wpbody-content > div.wrap > a" element has value "Add New"
    Then "div.media-toolbar-secondary" element exists
    Then "select#media-attachment-filters.attachment-filters" element exists
    Then "select#media-attachment-date-filters.attachment-filters" element exists
    Then "button.button.media-button.select-mode-toggle-button" element exists
    Then I log out