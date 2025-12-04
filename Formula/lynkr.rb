require "language/node"

class Lynkr < Formula
  desc "Self-hosted Claude Code proxy"
  homepage "https://github.com/vishalveerareddy123/Lynkr"
  url "https://github.com/vishalveerareddy123/Lynkr/releases/download/0.1.0/lynkr-0.1.0.zip"
  sha256 "1b740e9f8e33b309825319168aecf94dc349f2d6b3505ef270ff02f514651e93"
  license "MIT"

  depends_on "node" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_args(libexec)
    bin.install_symlink libexec/"bin/lynkr"
  end

  test do
    assert_match "lynkr", shell_output("#{bin}/lynkr --help")
  end
end
