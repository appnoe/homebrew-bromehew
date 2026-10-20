cask "bromehew" do
  version "2.0.0"
  sha256 "ab375f869db5fcb1917ce9e4a38c074fe108ac0709da7fb5838f57f3c8919a4a"

  url "https://github.com/appnoe/homebrew-bromehew/releases/download/v#{version}/Bromehew-#{version}.dmg"
  name "Bromehew"
  desc "Native front end for Homebrew"
  homepage "https://github.com/appnoe/homebrew-bromehew"

  livecheck do
    url "https://raw.githubusercontent.com/appnoe/homebrew-bromehew/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Bromehew.app"

  uninstall quit: ["com.appnoe.bromehew", "com.appnoe.bromehew.menu"]

  zap trash: [
    "~/Library/Application Support/Bromehew",
    "~/Library/Caches/com.appnoe.bromehew",
    "~/Library/HTTPStorages/com.appnoe.bromehew",
    "~/Library/Preferences/com.appnoe.bromehew.menu.plist",
    "~/Library/Preferences/com.appnoe.bromehew.plist",
    "~/Library/Saved Application State/com.appnoe.bromehew.savedState",
  ]
end
