cask "meeting-transcriber" do
  version "0.2.0"
  sha256 "94e5c4c046cbf0b4f9262c1e1cb4cdbe466b200e9fcd8b235a6bc0f6ada6dd0c"

  url "https://github.com/pasrom/homebrew-meeting-transcriber/releases/download/v#{version}/MeetingTranscriber-#{version}.dmg"
  name "Meeting Transcriber"
  desc "Auto-transcribe and summarize meetings"
  homepage "https://github.com/pasrom/meeting-transcriber"

  depends_on macos: ">= :sonoma"

  app "MeetingTranscriber.app"

  zap trash: [
    "~/Library/Application Support/MeetingTranscriber",
    "~/.meeting-transcriber",
  ]
end
