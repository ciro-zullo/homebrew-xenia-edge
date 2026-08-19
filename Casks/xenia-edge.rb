cask "xenia-edge" do
  version "a5f59a4"
  sha256 "47c1ac756a29aebb671ab7decdf5fcc4eba93e9e911c9f7a64896b85621284da"

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
