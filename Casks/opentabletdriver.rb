cask "opentabletdriver" do
  version "0.6.5.1"
  sha256 "b772a47a48be2b3e18c89cf3ef212d83090678e136b8e866c7191dbb10f63ea8"

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
