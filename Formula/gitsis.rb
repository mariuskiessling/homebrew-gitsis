class Gitsis < Formula
  desc "SSH identity selector for your Git commands"
  homepage "https://github.com/mariuskiessling/gitsis"
  url "https://github.com/mariuskiessling/gitsis/releases/download/v1.0.0/gitsis"
  sha256 "a093551dfa53f0bb111b0c41349700f8af766ec0c37b0efc84a51d21ff366800"
  license "MIT"

  bottle do
    root_url "https://github.com/mariuskiessling/homebrew-gitsis/releases/download/gitsis-1.0.0"
    sha256 cellar: :any_skip_relocation, catalina:     "b86630faae735150a0ace5c5f49367ce77a5ad54de962777a653fc00646b8e1a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "471c81cf49c961038bf90c95f843c642b4709dc17d0c89ab0523a570dc687367"
  end

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
