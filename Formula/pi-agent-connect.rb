class PiAgentConnect < Formula
  desc "Minimal Discord DM gateway for the pi coding agent"
  homepage "https://github.com/linhan-dev/pi-agent-connect"
  license "MIT"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linhan-dev/pi-agent-connect/releases/download/v0.1.4/pi-agent-connect-aarch64-apple-darwin.tar.gz"
      sha256 "ce46ed5ce994f419fa08ef45b74d0f129275a154160654c5e1f5f1d550906bf7"
    else
      url "https://github.com/linhan-dev/pi-agent-connect/releases/download/v0.1.4/pi-agent-connect-x86_64-apple-darwin.tar.gz"
      sha256 "833f11a87e7687c2d4eba73b0113eb447d0b0c248d5eddccd55cfa15d2bf0f6f"
    end
  end

  def install
    bin.install "pi-agent-connect"
  end

  test do
    system "#{bin}/pi-agent-connect", "--version"
  end
end
