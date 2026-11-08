cask "meeting-transcriber" do
  version "0.9.0"
  sha256 "f4be4d8df28cfa977ece120d8544491f40842ccede9fc18aa4e27f31a871e070"

  url "https://github.com/pasrom/homebrew-meeting-transcriber/releases/download/v#{version}/MeetingTranscriber-#{version}.dmg"
  name "Meeting Transcriber"
  desc "Auto-transcribe and summarize meetings"
  homepage "https://github.com/pasrom/meeting-transcriber"

  depends_on macos: :sonoma

  conflicts_with cask: "meeting-transcriber@beta"

  app "MeetingTranscriber.app"

  zap trash: [
    "~/Library/Application Support/MeetingTranscriber",
    "~/.meeting-transcriber",
  ]
end
