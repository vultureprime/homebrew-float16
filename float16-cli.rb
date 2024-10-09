class Float16Cli < Formula
  desc "CLI tool for float63"
  homepage "https://github.com/vultureprime/homebrew-float16"
  url "https://registry.npmjs.org/@bossthanawat/float63-cli/-/float63-cli-0.0.1-alpha.1.tgz"
  version "0.0.1-alpha.1"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Add a test command here
    system "#{bin}/float63", "--version"
  end
end