cask "notchnook" do
  version "1.2"
  sha256 "5b362efc3c18a1040ac5fb157403027ed995e1f603b1cf1796e3e4d59dae0315"

  url "https://lo.cafe/notchnook-files/NotchNook-#{version}.zip"
  name "NotchNook"
  desc "Whole new way of using your notch"
  homepage "https://lo.cafe/notchnook"

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "NotchNook.app"

  uninstall quit: "lo.cafe.NotchNook"

  zap trash: [
    "~/Library/Caches/lo.cafe.NotchNook",
    "~/Library/HTTPStorages/lo.cafe.NotchNook",
    "~/Library/Preferences/lo.cafe.NotchNook.plist",
  ]
end
