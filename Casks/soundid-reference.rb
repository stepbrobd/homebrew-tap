cask "soundid-reference" do
  version "3.0.0"
  sha256 :no_check

  url "https://updates.sonarworks.com/InstallerDownload.ashx?bootstrap=SoundIDReference&platform=Mac64"
  name "SoundID Reference"
  desc "Speaker and headphone calibration software"
  homepage "https://www.sonarworks.com/soundid-reference"

  depends_on macos: :big_sur

  installer manual: "SoundID Reference.app"

  uninstall quit:    [
              "com.sonarworks.soundid.reference.installer.boot",
              "com.sonarworks.soundid.reference.measure",
              "com.sonarworks.soundid.reference.systemwide",
            ],
            pkgutil: "com.sonarworks.soundid.*"
end
