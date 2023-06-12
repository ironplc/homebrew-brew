# Homebrew Formula for installing IronPLC Compiler on macOS or Linux.
#
# This file may be in one of two forms:
# * a template with variables that can be filled in at build time
# * the filled in template
#
# The template form has the following variables:
# * VERSION - the bare version number, such as 1.2.3
# * MACFILENAME - the name of the TAR.GZ file containing ironplcc, such as ironplcc-x86_64-apple-darwin.tar.gz
# * MACSHA256 - the SHA256 of {MACFILENAME}
# * LINUXFILENAME - the name of the TAR.GZ file containing ironplcc, such as ironplcc-x86_64-unknown-linux-musl.tar.gz
# * LINUXSHA256 - the SHA256 of {LINUXFILENAME}
# 
# The formula assumes releases are from the GitHub ironplc/ironplc repository
# and that releases are prefixed with "v".
class Ironplc < Formula
    version "0.13.30"
    desc "IronPLC Compiler"
    homepage "https://www.ironplc.com"
    license = "MIT"
  
    if OS.mac?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.30/ironplcc-x86_64-macos.tar.gz"
        sha256 "9b5bd66b823e00a5eed76e16bf66eac2261940b60f812c7e21ab63ab10221060"
    elsif OS.linux?
        url "https://github.com/ironplc/ironplc/releases/download/v0.13.30/ironplcc-x86_64-linux-musl.tar.gz"
        sha256 "34229705c498c364b9e2210e6d11522ad7dea22ae79bdb02ff2c87a4d66a678a"
    end
  
    def install
      bin.install "ironplcc"
    end
  end
