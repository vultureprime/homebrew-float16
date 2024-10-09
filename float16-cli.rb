require "language/node"

class Float16Cli < Formula
  desc "CLI tool for float63"
  homepage "https://github.com/vultureprime/homebrew-float16"
  url "https://registry.npmjs.org/@bossthanawat/float63-cli/-/float63-cli-0.0.1-alpha.1.tgz"
  version "0.0.1-alpha.1"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    (bin/"float63").write_env_script libexec/"bin/float63", PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  test do
    # Add a test command here
    system "#{bin}/float63", "--version"
  end
end