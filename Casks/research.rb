cask "research" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 "afac571b902c277945bd9c29c50520a2826145cac152f3f78f01bb9a0adf460d"

  url "https://un.ms/research/downloads/#{version}/Research_#{version}_#{arch}.dmg"
  name "Research"
  desc "Read more research papers with ease"
  homepage "https://un.ms/research"

  auto_updates true

  app "Research.app"

  uninstall quit: "research.un.ms"

  zap trash: "~/Library/Caches/research.un.ms"
end
