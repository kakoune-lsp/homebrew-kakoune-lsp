class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  if Hardware::CPU.arm?
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.1/kakoune-lsp-v18.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "b5c16ea04e6eecd5ae8699b01509d6cd88890051c265e10be9bc9b60a39a40a3"
  else
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.1/kakoune-lsp-v18.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "af73a9bdce2d38e85e5cebfa113bfd03773e405c90ce6b04b6301c2d0a32a953"
  end
  version "18.1.1"

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
