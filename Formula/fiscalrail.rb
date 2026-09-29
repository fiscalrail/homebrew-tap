class Fiscalrail < Formula
  desc "Create and manage invoices through the FiscalRail API"
  homepage "https://github.com/fiscalrail/fiscalrail-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.0/fiscalrail-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7ea4e4e65195dfaaf1cae400255c7a31f219eaa2ea4dc4098598da826d4ebc7f"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.0/fiscalrail-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "7eaa8f81e91a01925e65b51cfb903697a6bc70ec104251665efd880dbe4e2fd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.0/fiscalrail-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4896ad9b1844897d5f6325eb6d4b541500bc12b089b87921e9204ffab30a0e08"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.5.0/fiscalrail-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "03a35a3fb8799b9a57b7c0b9f4a7ace2fc05fafcac3518e98af48239789bf75c"
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
