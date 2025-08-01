cask "opentabletdriver" do
  version "0.6.5.1"
  sha256 "8b26edadcab6da44a518e956714f636ba9adcac678644a7c73a418bd25b6b43b"

  url "https://github.com/OpenTabletDriver/OpenTabletDriver/releases/download/v#{version}/OpenTabletDriver.osx-x64.tar.gz",
      verified: "github.com/OpenTabletDriver/OpenTabletDriver/"
  name "OpenTabletDriver"
  desc "Open source, cross platform, user mode tablet driver"
  homepage "https://opentabletdriver.net/"

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
