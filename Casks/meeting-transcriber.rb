cask "meeting-transcriber" do
  version "0.3.0-rc1"
  sha256 "7d025d0f4ce491f9960f573802b1c426c4922051035c0ac727814a19a13012b7"

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
