cask "isofix" do
  version "1.2"
  sha256 "e6fae869b516238d4d19a6830aaf3ffd10a7dee443e1b76056f4c93169b46706"

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
