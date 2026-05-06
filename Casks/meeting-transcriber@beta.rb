cask "meeting-transcriber@beta" do
  version "0.5.1-rc10"
  sha256 "eb1db4eb9453c4e023ff943b64ef4c301e434563089ef8143f8a582618da4bac"

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
