cask "isofix" do
  version "1.0"
  sha256 "dab71bb7a0b8b6205060368998c73578cd0506dbaef6ef5147d3d67055d7544d"

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
