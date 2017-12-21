@javascript @plugins
Feature: Verify the functionality of all Jetpack Modules

Scenario: Verify the functionality of all Jetpack Modules
	Given I am logged in as "localbehat"

	# Module: BeautifulMath
	Then I should visit "/testbehat/jetpack-test-page/"
	Then "#main > article > div > p > img" element exists

	# Module: Carousel
	Then I should visit "testbehat/carousel-test-page/"
	# Image Gallery
	Then I click "#gallery-3"
	# Carousel viewing window
	Then "body > div.jp-carousel-wrap.jp-carousel-transitions > div.jp-carousel > div.jp-carousel-slide.selected > img" element exists
	# Image Description
	Then "body > div.jp-carousel-wrap.jp-carousel-transitions > div.jp-carousel-info" element exists
	Then "#jp-carousel-comment-form-comment-field" element exists
	Then "#jp-carousel-comment-form-button-submit" element exists
	# Image metadata
	Then "body > div.jp-carousel-wrap.jp-carousel-transitions > div.jp-carousel-info > div.jp-carousel-image-meta" element exists
	Then I should visit "testbehat"

	# Module: Contact Form
	Then I should visit "/testbehat/wp-admin/post.php?post=28&action=edit"
	# Add Contact Form Button (Editor Menu)
	Then "#insert-jetpack-contact-form" element exists
	Then I should visit "testbehat/jetpack-test-page/"
	Then "#g28-name" element exists
	Then "#g28-email" element exists
	Then "#g28-website" element exists
	Then "#contact-form-comment-g28-comment" element exists
	# SUBMIT
	Then "#contact-form-28 > form > p > input.pushbutton-wide" element exists

	# Module: Custom Content Types
	Then I should visit "/testbehat/wp-admin/options-writing.php#cpt-options"
	Then I should see "Your Custom Content Types"
	Then I should see "Portfolio Projects"
	Then I should see "Testimonials"
	# Enable Portfolio Projects and Testimonials for this site
 	Then I check "jetpack_portfolio"
 	Then I check "jetpack_testimonial"
 	Then I click "#submit"
	# Enable Portfolio Projects for this site
	Then "#jetpack_portfolio" element exists
	# Enable testimonial for this site
	Then "#jetpack_testimonial" element exists
	Then "#jetpack_testimonial_posts_per_page" element exists
	# Verify Custom Content Type's UX and Portfolio in the Sidebar
	Then I should visit "/testbehat/wp-admin"
	# Sidebar > Portfolio
	Then "#menu-posts-jetpack-portfolio > a > div.wp-menu-name" element has value "Portfolio"
	# Sidebar > Testimonials
	Then "#menu-posts-jetpack-testimonial > a > div.wp-menu-name" element has value "Testimonials"
	Then I should visit "/testbehat/wp-admin/edit.php?post_type=jetpack-portfolio"
	Then "#menu-posts-jetpack-portfolio > ul > li.wp-first-item > a" element has value "All Projects"
	# Projects Page
	Then "#wpbody-content > div.wrap > h1" element has value "Projects"
	# Projects list table
	Then "#posts-filter > table" element exists
	# Add New Project Page
	Then I should visit "/testbehat/wp-admin/post-new.php?post_type=jetpack-portfolio"
	Then "#wpbody-content > div.wrap > h1" element has value "Add New Project"
	# Project Types Page
	Then I should visit "/testbehat/wp-admin/edit-tags.php?taxonomy=jetpack-portfolio-type&post_type=jetpack-portfolio"
	Then "#wpbody-content > div.wrap.nosubsub > h1" element has value "Project Types"
	# Add New Project Type
	Then "#submit" element exists
	# Project Tags Page
	Then I should visit "/testbehat/wp-admin/edit-tags.php?taxonomy=jetpack-portfolio-tag&post_type=jetpack-portfolio"
	Then "#wpbody-content > div.wrap.nosubsub > h1" element has value "Project Tags"
	# add new project tag button
	Then "#submit" element exists
	Then I should visit "testbehat/wp-admin/edit.php?post_type=jetpack-testimonial"
	Then "#menu-posts-jetpack-testimonial > ul > li.wp-first-item.current > a" element has value "All Testimonials"

	# Module: Custom Css
	Then I should visit "testbehat/wp-admin/customize.php?return=%2Ftestbehat%2Fwp-admin%2Fadmin.php%3Fpage%3Djetpack_modules"
	Then "#accordion-section-custom_css > h3" element has value "Additional CSS"
	Then I click "#accordion-section-custom_css > h3"
	Then I should visit "testbehat/wp-admin/customize.php?return=%2Ftestbehat%2Fwp-admin%2Fadmin.php%3Fpage%3Djetpack_modules"
	Then "#customize-control-custom_css > div.CodeMirror.cm-s-default.CodeMirror-wrap > div.CodeMirror-scroll" element exists
	Then I should visit "/testbehat/"

	# Module: Extra Sidebar Widgets
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack_modules"
	Then "#widgets > td > span > a" element has value "Extra Sidebar Widget"
	Then I should visit "/testbehat/wp-admin/widgets.php"
	Then "#widget-3_authors-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Authors (Jetpack)"
	Then "#widget-7_widget_contact_info-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Contact Info & Map (Jetpack)"
	Then "#widget-10_jetpack_display_posts_widget-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Display WordPress Posts (Jetpack)"
	Then "#widget-11_eu_cookie_law_widget-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "EU Cookie Law Banner (Jetpack)"
	Then "#widget-12_facebook-likebox-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Facebook Page Plugin (Jetpack)"
	Then "#widget-13_flickr-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Flickr (Jetpack)"
	Then "#widget-14_gallery-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Gallery (Jetpack)"
	Then "#widget-15_wpcom-goodreads-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Goodreads (Jetpack)"
	Then "#widget-16_googleplus-badge-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Google+ Badge (Jetpack)"
	Then "#widget-17_google_translate_widget-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Google Translate (Jetpack)"
	Then "#widget-18_grofile-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Gravatar Profile (Jetpack)"
	# Then "#widget-20_image-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Image (Jetpack)"
	# Then "#widget-21_internet_defense_league_widget-__i__ > div.widget-top > div.widget-title.ui-draggable-handle > h3" element has value "Internet Defense League (Jetpack)"
 	# TODO: Verify the existence of widgets after Mailchimp. The ordering is defferent on wpdev, wp and wpqa.

	# Module: Markdown
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack#/settings"
	Then I should see "Write posts or pages in plain-text Markdown syntax"
	# Jetpack Settings > Writing > Toggle button for write posts or pages in plain Markdown syntax
	Then "#toggle-1" element exists
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack#/discussion"

	# Module: Sharing
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack#/sharing"
	Then I should see "Add sharing buttons to your posts"
	# Then "#toggle-0" element exists
	Then I should visit "/testbehat/wp-admin/options-general.php?page=sharing"
	Then "#wpbody-content > div.wrap > h1" element has value "Sharing Settings"
	Then "#wpbody-content > div.wrap > div.share_manage_options > h2" element has value "Sharing Buttons"
	Then "#available-services > tbody > tr > td.description > h3" element has value "Available Services"
	Then "#print > span" element exists
	Then "#facebook > span" element exists
	Then "#linkedin > span" element exists
	Then "#reddit > span" element exists
	Then "#twitter > span" element exists
	Then "#press-this > span" element exists
	Then "#google-plus-1 > span" element exists
	Then "#tumblr > span" element exists
	Then "#pinterest > span" element exists
	Then "#pocket > span" element exists
	Then "#telegram > span" element exists
	Then "#jetpack-whatsapp > span" element exists
	Then "#skype > span" element exists
	Then "#enabled-services > tbody > tr > td.description > h3" element has value "Enabled Services"
	Then "#live-preview > tbody > tr > td.description > h3" element has value "Live Preview"
	# Button Style
	Then I should see "Sharing label"
	Then I should see "Show buttons on"
	# Disable CSS and Js
	Then the "disable_resources" checkbox should not be checked

	# Module: ShortCode Embed
	Then I should visit "/testbehat/2017/03/06/hello-world/"
	Then "span.embed-youtube > iframe.youtube-player" element exists
	# Verify if slideshow option is appearing in the gallery
	Then I should visit "testbehat/slideshow-test-page/"
	Then "#gallery-57-3-slideshow" element exists

	# Module: SiteMaps
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack#/traffic"
	Then I should see "Sitemaps"
	Then I should see "Generate XML sitemaps"
	Then I should see "Reading settings"

	# Module: Site Verification
	Then I should visit "/testbehat/wp-admin/admin.php?page=jetpack#/traffic"
	Then I should see "Site verification"
	Then "div.jp-form-settings-group > div > fieldset > label > span" element has value "Google"
	Then I should see "Bing"
	Then I should see "Pinterest"
	Then I should see "Yandex"

	# Module: Widget Visibility
	# Then I should visit "/testbehat/wp-admin/widgets.php"
	# Visibility button
	# Then "#widget-46_text-2 > div.widget-inside > form > div.widget-control-actions > div.alignright > a" element exists

	Then I log out