class Fiscalrail < Formula
  desc "Create and manage invoices through the FiscalRail API"
  homepage "https://github.com/fiscalrail/fiscalrail-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.1/fiscalrail-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "99838b1a1418bf8a7161ef635153f28c84b00df42be05abf990d6a5ec72a0d85"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.1/fiscalrail-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "55586f58005b1e823439b0a2216d794d8c640a44d7e0b9312aaa01653b8624b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.1/fiscalrail-v0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7eaf2bba6a9f5fb2647daa789bbf3d2c20b8fce5d3fad2cf56fe428be565710f"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.1/fiscalrail-v0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9573741f9df497095100504bf11c8b4b611c5fa26eb63d9bbe83b71d2088904f"
    end
  end

  def install
    bin.install "fiscalrail"
  end

  test do
    ENV["XDG_CONFIG_HOME"] = testpath.to_s
    assert_match '"profiles":[]', shell_output("#{bin}/fiscalrail --json profiles list")
  end
end
