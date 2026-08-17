cask "vocabfloat" do
  version "1.0.0"
  sha256 "37679ac785ef5e86a201583a85eba960f0ae745a52bb92dfed5dca01ab1dbbdb"

  url "https://github.com/TheColaBro/vocabfloat/releases/download/v#{version}/VocabFloat.zip"
  name "VocabFloat"
  desc "Minimalist macOS companion for global vocabulary lookup and PDF highlight extraction"
  homepage "https://github.com/TheColaBro/vocabfloat"

  depends_on macos: :sonoma

  app "VocabFloat.app"

  zap trash: [
    "~/Library/Application Support/VocabFloat",
    "~/Library/Preferences/com.thecolabro.vocabfloat.plist",
  ]
end
