cask "research" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.6"
  sha256 arm: "059deb3c0b9121ff3de15584fd5a9cba002424bebbc401c15485b278d474b35a",
         intel: "350a3ec6f2b6c5d1c778dcce60d9f9433be3d4ee6c358703f20283f18e6d60cb"

  url "https://github.com/stepbrobd/homebrew-tap/releases/download/research-#{version}/Research_#{version}_#{arch}.dmg"
  name "Research"
  desc "Read more research papers with ease"
  homepage "https://un.ms/research"

  auto_updates true

  app "Research.app"

  uninstall quit: "research.un.ms"

  zap trash: "~/Library/Caches/research.un.ms"
end
