cask "vocabfloat" do
  version "1.0.0"
  sha256 "67600fce11ab869b6094e3b0d6f4895a9a144301564bcab0886cb7fee2394075"

  url "https://github.com/TheColaBro/vocabfloat/releases/download/v#{version}/VocabFloat.zip"
  name "VocabFloat"
  desc "Minimalist macOS translation and dictionary tool"
  homepage "https://github.com/TheColaBro/vocabfloat"

  depends_on macos: :sequoia

  app "VocabFloat.app"

  zap trash: [
    "~/Library/Application Support/VocabFloat",
    "~/Library/Preferences/com.thecolabro.VocabFloat.plist",
  ]
end
