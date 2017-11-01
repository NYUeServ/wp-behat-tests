@javascript @plugins
Feature: As a site admin I should be able to activate services and features provided by Jetpack

  Scenario: Verify if Jetpack by WordPress.com is installed and available for All Users
    Given I am logged in as "localsuperbehat"
    Then "Jetpack by WordPress.com" plugin is installed
    Then "jetpack" plugin is available for "All Users"
    Then I log out

  Scenario: Verify if Jetpack by WordPress.com is activated on testbehat site
    Given I am logged in as "localbehat"
    # Activate Jetpack on testbehat
    Then I should visit "testbehat/"
    Then I activate plugin "Jetpack by WordPress.com"

    # Jetpack Plugin Tab is visible on the site's Dashboard Sidebar
    Then I should visit "testbehat/wp-admin/"
    Then "#toplevel_page_jetpack > a > div.wp-menu-name" element has value "Jetpack"
    Then "#toplevel_page_jetpack > ul.wp-submenu.wp-submenu-wrap > li > a.wp-first-item" element exists

    # Visit Jetpack Debugger page and verify visibilty of elements
    Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack-debugger"
    Then I should see "Access the full list of Jetpack modules available on your site."
    Then I should see "View Advanced Debug Results"

    # Code Block for Modules Page
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack_modules"
    Then "div.jp-masthead" element exists
    Then "ul.jp-footer__links" element exists
    Then "select#bulk-action-selector-top" element has value "Bulk Action"

    # Code to check if all modules are available
    Then "tbody#the-list" element has value "Beautiful Math"
    Then "tbody#the-list" element has value "Carousel"
    Then "tbody#the-list" element has value "Contact Form"
    Then "tbody#the-list" element has value "Custom CSS"
    Then "tbody#the-list" element has value "Custom content types"
    Then "tbody#the-list" element has value "Extra Sidebar Widgets"
    Then "tbody#the-list" element has value "Gravatar Hovercards"
    Then "tbody#the-list" element has value "Infinite Scroll"
    Then "tbody#the-list" element has value "Markdown"
    Then "tbody#the-list" element has value "Sharing"
    Then "tbody#the-list" element has value "Shortcode Embeds"
    Then "tbody#the-list" element has value "Site verification"
    Then "tbody#the-list" element has value "Sitemaps"
    Then "tbody#the-list" element has value "Tiled Galleries"
    Then "tbody#the-list" element has value "Widget Visibility"
    
    # Code to check boxes in all the elements
    Then "tr#latex.jetpack-module > th.check-column" element exists
    Then "tr#carousel.jetpack-module > th.check-column" element exists
    Then "tr#contact-form.jetpack-module > th.check-column" element exists
    Then "tr#custom-css.jetpack-module > th.check-column" element exists
    Then "tr#custom-content-types.jetpack-module > th.check-column" element exists
    Then "tr#widgets.jetpack-module > th.check-column" element exists
    Then "tr#gravatar-hovercards.jetpack-module > th.check-column" element exists
    Then "tr#infinite-scroll.jetpack-module > th.check-column" element exists
    Then "tr#markdown.jetpack-module > th.check-column" element exists
    Then "tr#sharedaddy.jetpack-module > th.check-column" element exists
    Then "tr#shortcodes.jetpack-module > th.check-column" element exists
    Then "tr#verification-tools.jetpack-module > th.check-column" element exists
    Then "tr#sitemaps.jetpack-module > th.check-column" element exists
    Then "tr#tiled-gallery.jetpack-module > th.check-column" element exists
    Then "tr#widget-visibility.jetpack-module > th.check-column" element exists

    # Load Jetpack Settings Page correctly
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/settings"
    Then "div#adminmenuwrap > ul#adminmenu > li#toplevel_page_jetpack" element exists
    Then "div.wp-menu-name" element exists
    Then "div.wp-menu-image" element exists
    Then "ul.wp-submenu" element exists
    # Then "a.wp-first-item" element has value "Dashboard"
    Then "li.current > a" element exists
    # Then "li.current > a" element has value "Settings"
    Then "span.dops-button-group" element exists
    Then "div.jp-masthead__nav" element exists
    Then "div.jp-masthead__nav > span > a" element has value "Dashboard"
    Then "div.jp-masthead__nav > span > a.is-primary" element has value "Settings"
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/writing"
    Then "span.dops-section-nav-tab__text > span" element has value "Writing"
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/sharing"
    Then "li.is-selected > a > span > span" element has value "Sharing"
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/discussion"
    Then "li.is-selected > a > span > span" element has value "Discussion"
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/traffic"
    Then "li.is-selected > a > span > span" element has value "Traffic"
    Then "div.jp-masthead > div > div > a" element exists
    Then "div.dops-card.jp-support-card__happiness" element exists

    # Load Jetpack Settings Nav Page correctly

    # Code Block for Checking Toolbar, Composing, Media, Custom Content Types, Theme Enhancements, Infinite Scroll
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/discussion"
    Then "div#jp-plugin-container" element has value "Comments"
    Then "div#jp-plugin-container" element has value "Enable pop-up business cards over commenter"
    Then "div#jp-plugin-container" element has value "Enable Markdown use for comments"

    # Code Block for Checking Toolbar, Composing, Media, Custom Content Types, Theme Enhancements, Infinite Scroll
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/traffic"
    Then "div#jp-plugin-container" element has value "Sitemaps"
    Then "div#jp-plugin-container" element has value "Generate XML sitemaps"
    Then "div#jp-plugin-container" element has value "Site verification"
    Then "div#jp-plugin-container" element has value "Note that verifying your site with these services is not necessary"

    # Code Block for Checking Toolbar, Composing, Media, Custom Content Types, Theme Enhancements, Infinite Scroll
    Then I should visit "testbehat/wp-admin/admin.php?page=jetpack#/writing"
    Then "div.jp-settings-container" element has value "Composing"
    Then "div.jp-settings-container" element has value "Media"
    Then "div.jp-settings-container" element has value "Custom content types"
    Then "div.jp-settings-container" element has value "Theme enhancements"
    Then "div.jp-settings-container" element has value "Infinite Scroll"
    Then I log out