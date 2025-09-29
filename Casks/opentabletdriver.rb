cask "opentabletdriver" do
  version "0.6.6.0"
  sha256 "0dc978eeab05f7903a49a10b6d7020f3179cb2aa2a2b5cabe0755c14608cce76"

  url "https://github.com/OpenTabletDriver/OpenTabletDriver/releases/download/v#{version}/OpenTabletDriver-#{version}_osx-x64.tar.gz",
      verified: "github.com/OpenTabletDriver/OpenTabletDriver/"
  name "OpenTabletDriver"
  desc "Open source, cross platform, user mode tablet driver"
  homepage "https://opentabletdriver.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OpenTabletDriver.app"

  uninstall launchctl: "application.net.opentabletdriver",
            quit:      [
              "OpenTabletDriver",
              "OpenTabletDriver.Daemon",
            ]

  zap trash: [
    "~/Library/Application Support/OpenTabletDriver",
    "~/Library/Saved Application State/net.opentabletdriver.savedState",
  ]
end
