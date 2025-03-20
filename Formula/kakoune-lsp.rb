class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  if Hardware::CPU.arm?
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.3/kakoune-lsp-v18.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "74ae4461f36591ce99d8ebf121c7c8d43391fefff72e419c56b20cbbbf4e6b43"
  else
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.3/kakoune-lsp-v18.1.3-x86_64-apple-darwin.tar.gz"
    sha256 "2790b3a76f480b7f6ee0e60f4b368299b2c979f2b7094254036cd9945b213036"
  end
  version "18.1.3"

  def install
    bin.install "kak-lsp"
  end

  def caveats
    <<~EOS
      For the default config, put

        eval %sh{kak-lsp}
        lsp-enable

      into your kakrc.

      To customize the behavior, see https://github.com/kakoune-lsp/kakoune-lsp/blob/v#{version}/README.asciidoc
    EOS
  end

end
