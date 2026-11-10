cask "isofix" do
  version "1.3"
  sha256 "cd6e6b161fcebaae6fc70d7b165eedd7e32b0514f8f32d77091f0ba0a6359e89"

  url "https://github.com/spacecakes/isofix/releases/download/v#{version}/ISOFix.zip"
  name "ISOFix"
  desc "Keep § and < in place on non-Apple ISO keyboards"
  homepage "https://github.com/spacecakes/isofix"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "ISOFix.app"

  uninstall quit: "com.gabriellundmark.isofix"

  zap trash: "~/Library/Preferences/com.gabriellundmark.isofix.plist"

  caveats <<~EOS
    ISOFix is not notarized, so macOS blocks it the first time it opens.
    Go to System Settings → Privacy & Security and click "Open Anyway".
    Do this again after each update.
  EOS
end
