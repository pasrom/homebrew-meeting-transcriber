cask "meeting-transcriber@beta" do
  version "0.5.1-rc14"
  sha256 "8e34a1a6db6027af80b03d1062f2cc642c4a3867487f4ae6bb3469d5c5acce65"

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
