cask "xenia-edge" do
  version "0413471"
  sha256 "9e400ee9fd9af005a49f8462462add8d039087cf6c71fb04e0d5ef334938cf73"

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
