cask "meeting-transcriber@beta" do
  version "0.6.0-rc4"
  sha256 "45811d3ccbe8314a97ca21bb4ff7fc982f160d14ce2e5e1fe37140ca9942e328"

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
