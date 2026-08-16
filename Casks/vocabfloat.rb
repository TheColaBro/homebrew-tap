cask "vocabfloat" do
  version "1.0.0"
  sha256 "45b666a2887c845988904b0bb28369f304944db1265858abfa4f30ae7ac86e6c"

  url "https://github.com/TheColaBro/VocabFloat-macOS/releases/download/v#{version}/VocabFloat.zip"
  name "VocabFloat"
  desc "Minimalist macOS translation and dictionary tool"
  homepage "https://github.com/TheColaBro/VocabFloat-macOS"

  depends_on macos: ">= :sequoia"

  app "VocabFloat.app"

  zap trash: [
    "~/Library/Application Support/VocabFloat",
    "~/Library/Preferences/com.thecolabro.VocabFloat.plist",
  ]
end
