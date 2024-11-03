class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  if Hardware::CPU.arm?
url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.0.3/kakoune-lsp-v18.0.3-aarch64-apple-darwin.tar.gz"
sha256 "b3628d9a57cb3604fb83d6ca4cff2c50adb3e6fe1d0903665c4a40f9660907e4"
  else
url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.0.3/kakoune-lsp-v18.0.3-x86_64-apple-darwin.tar.gz"
sha256 "e45b84b0ba55a9558b69b3fcb1f5e6070abfdbc74c1c680c547e1c02255fced0"
  end
version "18.0.3"

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
