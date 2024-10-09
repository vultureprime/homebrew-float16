class Float16Cli < Formula
  desc "CLI for interacting with serverless GPU services"
  homepage "https://float16.cloud/"
  version "0.1.0"
  license "GNU Affero General Public License v3.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", libexec, "@bossthanawat/float63-cli"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    output = shell_output("#{bin}/float16-cli --version")
    assert_match version.to_s, output
  end
end