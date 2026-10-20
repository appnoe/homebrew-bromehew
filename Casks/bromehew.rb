cask "bromehew" do
  version "2.1.0"
  sha256 "50ec9153db0a3f7d2a3c20e1b8c10c9d225558ae05c0984f57acc5774f544662"

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
