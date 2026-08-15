# SPDX-License-Identifier: MIT
#
# Homebrew cask for Hearth. The sync-hearth workflow updates the version and
# sha256 from the latest signed GitHub release.
#
# Install from a tap with:
#   brew install --cask adamskijow/tap/hearth
# (after `brew tap adamskijow/tap`), or point brew straight at this file.
cask "hearth" do
  version "1.5.0"
  sha256 "64cde1faf5808e9a863b1ecdfa6adc5ab54ed6341b718adbd5442dc3d1b05b5a"

  url "https://github.com/adamskijow/Hearth/releases/download/v#{version}/Hearth-#{version}.dmg"
  name "Hearth"
  desc "Background supervisor that keeps a local LLM runner alive on a headless Mac"
  homepage "https://github.com/adamskijow/Hearth"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Hearth.app"
  # The app bundle is also the `hearth` CLI (doctor, status, setup, wait-ready),
  # which the README and docs route you to. Put it on PATH.
  binary "#{appdir}/Hearth.app/Contents/MacOS/Hearth", target: "hearth"

  zap trash: [
    "~/Library/Application Support/Hearth",
    "~/Library/Logs/Hearth",
  ]
end
