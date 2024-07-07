cask "notchnook" do
  version "1.1.7"
  sha256 "d87d10d77606384f37b00851df5bdb273dd03a115a8d2ce5f22f4c40851d51ce"

  url "https://lo.cafe/notchnook-files/NotchNook-#{version}.zip"
  name "NotchNook"
  desc "Whole new way of using your notch"
  homepage "https://lo.cafe/notchnook"

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "NotchNook.app"
end
