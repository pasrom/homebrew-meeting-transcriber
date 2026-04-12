cask "meeting-transcriber@beta" do
  version "0.5.1-rc6"
  sha256 "5de467f087d5f1ac5466c00d37f7c7f0bfe90ab2d4ff4b6bac9e5e7f0bec8977"

  url "https://github.com/pasrom/meeting-transcriber/releases/download/v#{version}/MeetingTranscriber-#{version}.dmg"
  name "Meeting Transcriber (Beta)"
  desc "Auto-transcribe and summarize meetings (pre-release)"
  homepage "https://github.com/pasrom/meeting-transcriber"

  depends_on macos: ">= :sonoma"

  conflicts_with cask: "meeting-transcriber"

  app "MeetingTranscriber.app"

  zap trash: [
    "~/Library/Application Support/MeetingTranscriber",
    "~/.meeting-transcriber",
  ]
end
