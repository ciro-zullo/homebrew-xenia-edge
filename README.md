# homebrew-xenia-edge

Personal tap that installs the latest macOS build of
[Xenia Edge](https://github.com/has207/xenia-edge).

## Install
    brew tap ciro-zullo/xenia-edge
    brew trust ciro-zullo/xenia-edge
    brew install --cask xenia-edge

## Get the newest build
Xenia Edge has no version numbers, just rolling commit-tagged releases,
so `brew upgrade` alone won't notice new builds:

    brew upgrade --cask --greedy xenia-edge