require 'formula'

class StashUtils < Formula
  homepage 'https://github.com/denisura/homebrew-devel'
  url 'https://github.com/denisura/homebrew-devel.git'

  depends_on "git"

  def install

    bin.install "bin/stash-*"
    prefix.install "stash"

  end

  test do

  end

  def caveats; <<-EOS.undent
    Before you can use stash-clone you must export some variables to your $SHELL.

      To export the needed variables, add them to your dotfiles.
       * On Bash, add them to `~/.bash_profile`.

      export WORKSPACE="<Local workspace directory>"
      export STASHSSH="<Stash SSH url. Ex. ssh://git@stash.my.corp.com:2222>"
  EOS
  end
end
