class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/ul/kak-lsp/"
  url "https://github.com/ul/kak-lsp/releases/download/v2.2.0/kak-lsp-v2.2.0-x86_64-apple-darwin.tar.gz"
  sha256 "6a99c64b3894775cf44e5a0e02baed3518c9dc83d2bd93359f9ea8b66380f685"
  version "2.2.0"

  def install
    bin.install "kak-lsp"
    #bin.install "kak-lsp.toml"
    system "mkdir", "-p", "~/.config/kak-lsp"
    system "cp", "-n", "kak-lsp.toml", "~/.config/kak-lsp/"
    system "mkdir", "-p", "~/.config/kak/autoload"
    system "cp", "lsp.kak", "~/.config/kak/autoload/"
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
