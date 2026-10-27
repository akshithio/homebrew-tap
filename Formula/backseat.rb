class Backseat < Formula
  desc "Computer use for macOS that doesn't take over your screen (MCP server)"
  homepage "https://backseat.akshith.io"
  url "https://github.com/akshithio/backseat/releases/download/v0.1.0/backseat-0.1.0-macos.zip"
  sha256 "b8667c493d1b4addfefeac23116ccabef732ffa8a47f524d0fbd60623a24b854"
  version "0.1.0"
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
