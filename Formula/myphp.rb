require 'formula'

class Myphp < Formula
  homepage 'https://github.com/denisura/homebrew-devel'
  url 'https://github.com/denisura/homebrew-devel.git'


  depends_on "homebrew/dupes/zlib"
  depends_on "homebrew/php/php55"
  depends_on "homebrew/php/php55-xdebug"

  def install

     inreplace "#{HOMEBREW_PREFIX}/etc/php/5.5/php.ini" do |s|
       s.gsub! /^;*(date\.timezone[\s]*=).*/, '\1'+" UTC"
       s.gsub! /^;*(memory_limit[\s]*=).*/, '\1'+" 512M"
     end

  end

  test do
    system 'php --version'
  end

end
