cask "vocabfloat" do
  version "1.0.0"
  sha256 "28082cd56be6a8c32d5cbd202f767af81f3057687bed7a1b4945431144a67f68"

  url "https://github.com/TheColaBro/vocabfloat/releases/download/v#{version}/VocabFloat.zip"
  name "VocabFloat"
  desc "Minimalist macOS companion for global vocabulary lookup and PDF highlight extraction"
  homepage "https://github.com/TheColaBro/vocabfloat"

  depends_on macos: ">= :sonoma"

  app "VocabFloat.app"

  zap trash: [
    "~/Library/Application Support/VocabFloat",
    "~/Library/Preferences/com.thecolabro.vocabfloat.plist",
  ]
end
