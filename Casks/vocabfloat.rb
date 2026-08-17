cask "vocabfloat" do
  version "1.0.0"
  sha256 "607531c8cafc396464719e4908c009d61841ba6f15fe34797f9746c513a19c57"

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
