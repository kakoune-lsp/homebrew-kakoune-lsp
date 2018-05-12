class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/ul/kak-lsp/"
  url "https://github.com/ul/kak-lsp/releases/download/v3.1.1/kak-lsp-v3.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "a5671ff923c2acc1337d71d2f68d7ea674a75bb36b9e14d3c883fafde2d83baf"
  version "3.1.1"

  def install
    bin.install "kak-lsp"
    bin.install "kak-lsp.toml"
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
            <string>/bin/bash</string>
            <string>-l</string>
            <string>-c</string>
            <string>#{bin}/kak-lsp</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
          <key>StandardErrorPath</key>
          <string>/tmp/kak-lsp.log</string>
        </dict>
      </plist>
    EOS
  end
end
