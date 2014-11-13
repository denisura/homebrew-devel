require 'formula'

class Phpqatools < Formula
  homepage 'https://github.com/denisura/homebrew-devel'
  url 'https://github.com/denisura/homebrew-devel.git'

  depends_on "homebrew/php/php-code-sniffer"
  depends_on "homebrew/php/behat"
  depends_on "homebrew/php/composer"
  depends_on "homebrew/php/pdepend"
  depends_on "homebrew/php/phpcpd"
  depends_on "homebrew/php/phpdocumentor"
  depends_on "homebrew/php/phploc"
  depends_on "homebrew/php/phpmd"
  depends_on "homebrew/php/phpunit"

  def install
  end

  test do
    system 'behat --version'
    system 'composer --version'
    system 'pdepend --version'
    system 'phpcpd --version'
    system 'phpdoc --version'
    system 'phploc --version'
    system 'phpmd --version'
    system 'phpunit --version'
    system 'phpcs --version'
  end

  def caveats; <<-EOS.undent
    You have the following tools installed:
      behat
      composer
      pdepend
      phpcpd
      phpdoc
      phploc
      phpmd
      phpunit
      phpcs
    EOS
  end
end
