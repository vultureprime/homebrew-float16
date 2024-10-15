class Float63Npmm < Formula
  desc "An example formula"
  homepage "https://github.com/vultureprime/homebrew-float16"
  url "https://registry.npmjs.org/@bossthanawat/float63-cli/-/float63-cli-0.0.1-alpha.3.tgz"
  # sha256 "abc123abc123abc123abc123abc123abc123abc123abc123abc123abc123abc1"

  depends_on "node"
  # uncomment if there is a native addon inside the dependency tree
  # depends_on "python" => :build

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here, version isn't usually meaningful
    assert_match version.to_s, shell_output("#{bin}/float63-cli --version")
  end
end