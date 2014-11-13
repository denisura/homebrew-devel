require 'formula'

class Stash < Formula
  homepage 'https://github.com/denisura/homebrew-devel'
  url 'https://bobswift.atlassian.net/wiki/download/attachments/16285777/stash-cli-4.0.0-SNAPSHOT-distribution.zip?version=23&modificationDate=1415133710878&api=v2'
  version '4.0.0'

  depends_on "git"

  def install
    jars = prefix/'jars'
    jars.install "lib"
    system "chmod +x #{jars}/*"
    bin.write_jar_script "#{jars}/lib/stash-cli-#{version}-SNAPSHOT.jar  --server $STASH_SERVER --user $STASH_USER --password $STASH_PASSWORD", "stash"
  end

  test do


  end

  def caveats; <<-EOS.undent
    Before you can use these stash you must export some variables to your $SHELL.

      To export the needed variables, add them to your dotfiles.
       * On Bash, add them to `~/.bash_profile`.

      export STASH_SERVER="<Stash server url>"
      export STASH_USER="<YOUR USERNAME>"
      export STASH_PASSWORD="<YOUR PASSWORD>"

    Verify installation and configuration by running:

      stash --action getServerInfo

  EOS
  end

end
