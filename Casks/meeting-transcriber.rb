cask "meeting-transcriber" do
  version "0.8.1"
  sha256 "0e45cb8f9a7aaf479c58b726e966406db52046a3d75ae5993b21bf6c403a8c3a"

  url "https://github.com/pasrom/homebrew-meeting-transcriber/releases/download/v#{version}/MeetingTranscriber-#{version}.dmg"
  name "Meeting Transcriber"
  desc "Auto-transcribe and summarize meetings"
  homepage "https://github.com/pasrom/meeting-transcriber"

  depends_on macos: :sonoma

  app "MeetingTranscriber.app"

  zap trash: [
    "~/Library/Application Support/MeetingTranscriber",
    "~/.meeting-transcriber",
  ]
end
