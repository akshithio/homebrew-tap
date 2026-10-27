class Backseat < Formula
  desc "Computer use for macOS that doesn't take over your screen (MCP server)"
  homepage "https://backseat.akshith.io"
  url "https://github.com/akshithio/backseat/releases/download/v0.1.1/backseat-0.1.1-macos.zip"
  sha256 "abc054fbe9d975a75e04dc5a42a8d06af174f623477d8d852545b8267fe94e47"
  version "0.1.1"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "backseat"
  end

  def caveats
    <<~EOS
      Add it to Claude Code:
        claude mcp add -s user backseat -- #{opt_bin}/backseat
      The first time it runs, macOS asks you to allow Accessibility and Screen Recording for backseat.
    EOS
  end

  test do
    assert_predicate bin/"backseat", :executable?
  end
end
