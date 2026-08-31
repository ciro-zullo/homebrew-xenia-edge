cask "xenia-edge" do
  version "83abd43"
  sha256 "0ce29c087a36b6071c2ecaf7f9ea08b5c437ef4dff98b2de3945a4cec86baafc"

  url "https://github.com/has207/xenia-edge/releases/download/#{version}/xenia_edge_macos.dmg"
  name "Xenia Edge"
  desc "Experimental fork of the Xenia Xbox 360 emulator"
  homepage "https://github.com/has207/xenia-edge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Xenia-edge.app"

  caveats do
    <<~EOS
      Xenia Edge ships a universal binary but isn't notarized, so Gatekeeper
      may block it on first launch. If macOS refuses to open it, right-click
      the app in Finder and choose "Open", or run:
        xattr -cr "#{appdir}/Xenia-edge.app"
    EOS
  end
end
