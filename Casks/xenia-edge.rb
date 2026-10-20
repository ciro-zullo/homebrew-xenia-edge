cask "xenia-edge" do
  version "57693c0"
  sha256 "fc04d289e795f97a47798486741ded0f243c48181612c3af508362f90241bc2f"

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
