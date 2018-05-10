class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/ul/kak-lsp/"
  url "https://github.com/ul/kak-lsp/releases/download/v2.2.2/kak-lsp-v2.2.2-x86_64-apple-darwin.tar.gz"
  sha256 "cd8474a4c466fa017e747025a74b009aad1cacd0b1008978f965044cbf365349"
  version "2.2.2"

  def install
    bin.install "kak-lsp"
    bin.install "kak-lsp.toml"
    pkgshare.install "lsp.kak"
  end

  def caveats
    <<~EOS
      Due to Homebrew limitations you need to install/update lsp.kak manually:

      cp #{pkgshare}/lsp.kak ~/.config/kak/autoload/
    EOS
  end

  plist_options :startup => true

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{bin}/kak-lsp</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
        </dict>
      </plist>
    EOS
  end
end
