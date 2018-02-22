@javascript @themes 
Feature: As a user I should be able to activate NYU Blogs Test Theme.

Scenario: Activate NYU Theme, verify the characteristics and reset to default theme
  Given I am logged in as "localbehat"
  Then I should visit "testbehat/"
  Then I activate theme "NYU Blogs test"
  # Check elements of NYU Theme
  Then I should visit "testbehat/"
  # NYU Logo
  Then "div.nyuLogo" element exists
  # Menu bar
  Then "#slide-menu-left" element exists
  Then I should see "Unless otherwise noted, all content copyright New York University. All rights reserved."
  Then I should see "Designed by the digital Communications Group."
  # Deactivate NYU Theme
  Then I activate default theme
  Then I log out