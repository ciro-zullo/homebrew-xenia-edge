cask "xenia-edge" do
  version "b65dd25"
  sha256 "3cca09fac0812c5f421d17b0cb9c8adee50136db8701f36de61a8e8bc4b0ffe4"

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
