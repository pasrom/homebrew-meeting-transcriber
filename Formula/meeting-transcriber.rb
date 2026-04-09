class MeetingTranscriber < Formula
  desc "Auto-transcribe and summarize meetings (build from source)"
  homepage "https://github.com/pasrom/Transcriber"
  license "MIT"

  # No stable URL — install via: brew install --HEAD pasrom/meeting-transcriber/meeting-transcriber
  head "https://github.com/pasrom/Transcriber.git", branch: "main"

  depends_on :macos
  depends_on xcode: ["15.0", :build]

  def install
    # build_release.sh creates .build/release/MeetingTranscriber.app
    system "./scripts/build_release.sh"

    app = buildpath/".build/release/MeetingTranscriber.app"
    prefix.install app
  end

  def post_install
    # Symlink .app into /Applications for Launchpad visibility
    app_target = Pathname("/Applications/MeetingTranscriber.app")
    app_source = prefix/"MeetingTranscriber.app"
    if app_source.exist? && !app_target.exist?
      app_target.make_symlink(app_source)
    end
  end

  def caveats
    <<~EOS
      MeetingTranscriber.app has been installed to:
        #{prefix}/MeetingTranscriber.app

      On first launch, right-click → Open (app is ad-hoc signed).

      Grant these permissions in System Settings → Privacy & Security:
        - Screen Recording (required for meeting detection)
        - Microphone (required for audio recording)
        - Accessibility (optional, for mute detection)

      Output files are stored in:
        ~/Library/Application Support/MeetingTranscriber/
    EOS
  end

  test do
    assert_predicate prefix/"MeetingTranscriber.app/Contents/MacOS/MeetingTranscriber", :executable?
  end
end
