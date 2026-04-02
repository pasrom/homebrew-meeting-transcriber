cask "meeting-transcriber" do
  version "0.5.1-rc2"
  sha256 "3d1ea09e95929800fd34c0696b41bcb930537a3e2449ec2dae61d5a34f045148"

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
