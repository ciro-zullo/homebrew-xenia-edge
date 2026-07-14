cask "xenia-edge" do
  version :latest
  sha256 :no_check

  depends_on :macos

  url "https://github.com/has207/xenia-edge/releases/latest/download/xenia_edge_macos.dmg"
  name "Xenia Edge"
  desc "Experimental fork of the Xenia Xbox 360 emulator"
  homepage "https://github.com/has207/xenia-edge"

  app "Xenia-edge.app"

  caveats do
    <<~EOS
      Xenia Edge ships a universal binary but isn't notarized, so Gatekeeper
      may block it on first launch. If macOS refuses to open it, right-click
      the app in Finder and choose "Open", or run:
        xattr -cr "#{appdir}/Xenia-edge.app"

      This cask always tracks the newest CI build, not a numbered version, so
      plain `brew upgrade` won't detect updates. Use:
        brew upgrade --cask --greedy xenia-edge
      (or `brew reinstall --cask xenia-edge`) to pull the latest build.
    EOS
  end
end