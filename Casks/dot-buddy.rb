cask "dot-buddy" do
  version "0.3.23"
  sha256 "0343e708c3bc350a98aa883197ae8d68a6ea77c5285fa085c77c7222c4c64f39"

  url "https://github.com/doldoldol21/dot-buddy/releases/download/v#{version}/Dot-Buddy-#{version}.zip"
  name "Dot Buddy"
  desc "Pixel desktop pet"
  homepage "https://github.com/doldoldol21/dot-buddy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Dot Buddy.app"

  zap trash: [
    "~/Library/Application Support/DotBuddy",
    "~/Library/Preferences/io.github.doldoldol21.dot-buddy.plist",
  ]

  caveats <<~EOS
    Dot Buddy is ad-hoc signed and not notarized, so macOS Gatekeeper blocks the
    first launch. Open it once with: right-click the app > Open, or approve it in
    System Settings > Privacy & Security > "Open Anyway".
  EOS
end
