class PiAgentConnect < Formula
  desc "Minimal Discord DM gateway for the pi coding agent"
  homepage "https://github.com/linhan-dev/pi-agent-connect"
  license "MIT"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linhan-dev/pi-agent-connect/releases/download/v0.1.3/pi-agent-connect-aarch64-apple-darwin.tar.gz"
      sha256 "84c4bc46cd72d27ed703a6cea3e592c85f8f401b7305a479c8d7669e6a7da8df"
    else
      url "https://github.com/linhan-dev/pi-agent-connect/releases/download/v0.1.3/pi-agent-connect-x86_64-apple-darwin.tar.gz"
      sha256 "91d90369d8b79348ef18c4d36625155715adfc730800d7b6f7fabd74bc9d2e26"
    end
  end

  def install
    bin.install "pi-agent-connect"
  end

  test do
    system "#{bin}/pi-agent-connect", "--version"
  end
end
