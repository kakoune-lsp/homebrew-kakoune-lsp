class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  if Hardware::CPU.arm?
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.0/kakoune-lsp-v18.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "aa3e5d51af663d7892fed1901443d198ef726c4c3632a79c721d431d6cac0240"
  else
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.0/kakoune-lsp-v18.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "0a6283a75591547583dfa9aace5c0f777e4be9f5f6240212d81b6121d9a5659d"
  end
  version "18.1.0"

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
