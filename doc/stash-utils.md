Stash Utils
===========

Installation
------------

```
brew tap denisura/devel
brew install stash-utils
```

stash-clone
-----------

* Clones repos from stash into workspace (by default home directory)
* workspace location can be set with WORKSPACE environment variable
* Add remote upstream to origin
* Set origin to user repo

Example:

```
stash-clone project/my_fancy-repo
```

* Clones `ssh://git@stash.my.corp.com:8080/project/my_fancy-repo`  into `~/project/my_fancy-repo`.
* Adds upstream remote to `ssh://git@stash.my.corp.com:8080/project/my_fancy-repo`.
* Sets origin remote to `ssh://git@stash.my.corp.com:8080/~<stashuser>/project_my-fancy-repo`.


