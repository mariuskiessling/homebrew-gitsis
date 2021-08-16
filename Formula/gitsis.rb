class Gitsis < Formula
  desc "SSH identity selector for your Git commands"
  homepage "https://github.com/mariuskiessling/gitsis"
  url "https://github.com/mariuskiessling/gitsis/releases/download/v1.0.0/gitsis"
  sha256 "a093551dfa53f0bb111b0c41349700f8af766ec0c37b0efc84a51d21ff366800"
  license "MIT"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "gitsis"
  end

  test do
    assert_match "Failed to find a config file for gitsis!",
      shell_output("#{bin}/gitsis 2>&1", 1)
  end
end
