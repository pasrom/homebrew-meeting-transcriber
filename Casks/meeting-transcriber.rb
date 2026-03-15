cask "meeting-transcriber" do
  version "0.4.1"
  sha256 "2b393d12bcbf1be9a48b5ef1b2822db65a0a4cb83d92f8e27105428a6452b8a9"

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
