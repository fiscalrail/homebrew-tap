class Fiscalrail < Formula
  desc "Create and manage invoices through the FiscalRail API"
  homepage "https://github.com/fiscalrail/fiscalrail-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.6.0/fiscalrail-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "e68da9ce9094f3ffec353e44a728e5084f1090265dc399dd20224786a1b44a13"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.6.0/fiscalrail-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f31195847f6be20edde240f7cd9df40b991b7f7ff0c85e26271dcd8093fc874d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.6.0/fiscalrail-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b641914ebbbf730a896ffee19e1c2ac10de1e94368b2c01f56831fa0b73e5288"
    end

    on_intel do
      url "https://github.com/fiscalrail/fiscalrail-cli/releases/download/v0.6.0/fiscalrail-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96db2d75efb82005572200445ead0dc28e9bcc85edd414b5a83ef2b5934601e0"
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
