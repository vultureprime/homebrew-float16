class Float16Cli < Formula
  desc "Your CLI tool for float16 operations"
  homepage "https://github.com/vultureprime/homebrew-float16"
  version "0.1.0" # แทนที่ด้วยเวอร์ชันปัจจุบันของคุณ

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vultureprime/homebrew-float16/releases/download/v#{version}/float16-cli-mac-arm64"
      # sha256 "abc123..." # แทนที่ด้วย SHA256 ที่ถูกต้องของไฟล์ mac-arm64
    else
      url "https://github.com/vultureprime/homebrew-float16/releases/download/v#{version}/float16-cli-mac-x64"
      # sha256 "def456..." # แทนที่ด้วย SHA256 ที่ถูกต้องของไฟล์ mac-x64
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/vultureprime/homebrew-float16/releases/download/v#{version}/float16-cli-linux-arm64"
      # sha256 "ghi789..." # แทนที่ด้วย SHA256 ที่ถูกต้องของไฟล์ linux-arm64
    else
      url "https://github.com/vultureprime/homebrew-float16/releases/download/v#{version}/float16-cli-linux-x64"
      # sha256 "jkl012..." # แทนที่ด้วย SHA256 ที่ถูกต้องของไฟล์ linux-x64
    end
  end

  def install
    bin.install Dir["*"].first => "float16"
  end

  test do
    system "#{bin}/float16", "--version"
  end
end