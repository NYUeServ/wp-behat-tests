@javascript @plugins @networkactivated
Feature: As a super admin, I verify if NYU Stream Embed is installed, network activated, visible on sidebar and NYU configuration is set.

Scenario: Verify if NYU Stream plugin is Installed and Network Activated
	Given I am logged in as "localsuperbehat"
	#Then "NYU Stream Embed" plugin is installed
	Then "NYU Stream Embed" plugin is installed and network activated

	# NYU Stream Embed is visible on Sidebar and NYU Configuration is set
	Then I should visit "wp-admin/network/settings.php"
	Then I should see "NYU Stream"
	Then I should visit "wp-admin/network/settings.php?page=nyu-stream-settings"
	Then I should see "NYU Stream Embed"
	Then I should see "NYU Stream Embed Settings for Video"
	# iframe id
	Then the "nse_settings_video_id" field should contain "kaltura_player"
	# iframe src
	Then the "nse_settings_video_src" field should contain "https://cdnapisec.kaltura.com/p/1674401/sp/167440100/embedIframeJs/uiconf_id/23435151/partner_id/1674401?iframeembed=true&playerId=kaltura_player&flashvars[mediaProtocol]=rtmp&flashvars[streamerType]=rtmp&flashvars[streamerUrl]=rtmp://www.kaltura.com:1935&flashvars[rtmpFlavors]=1&&wid=1_f8okstds&entry_id="
	Then I should see "NYU Stream Embed Settings for Playlist"
	# iframe src
	Then the "nse_settings_playlist_src" field should contain "https://cdnapisec.kaltura.com/p/1674401/sp/167440100/embedIframeJs/uiconf_id/23437711/partner_id/1674401/widget_id/1_zh8d6z1g?iframeembed=true&playerId=kaltura_player_1390404249&flashvars[playlistAPI.autoContinue]=true&flashvars[playlistAPI.autoInsert]=true&flashvars[ks]=&flashvars[playlistAPI.kpl0Id]="
	# Save Changes button
	Then "#nse-network-settings > form > p > input.button-primary" element exists
	Then I log out

