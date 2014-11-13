require 'formula'

class Feqatools < Formula
  homepage 'https://github.com/denisura/homebrew-devel'
  url 'https://github.com/denisura/homebrew-devel.git'

  depends_on "node"
  depends_on "selenium-server-standalone"

  def install

  end

  test do

    system 'npm --version'

  end

end
