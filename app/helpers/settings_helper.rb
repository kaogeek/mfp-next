module SettingsHelper
  def oauth_logins
    [
      (:google_oauth2 if feature?(:google_login)),
      (:facebook if feature?(:facebook_login)),
      (:twitter if feature?(:twitter_login)),
      (:wordpress_oauth2 if feature?(:wordpress_login))
    ].compact
  end

  def feature?(name)
    setting["feature.#{name}"].presence || setting["process.#{name}"].presence
  end

  def setting
    @all_settings ||= Setting.all.map { |s| [s.key, s.value.presence] }.to_h
  end

  def display_setting_name(setting_name)
    if setting_name == "setting"
      t("admin.settings.setting_name")
    else
      t("admin.settings.#{setting_name}")
    end
  end
end
