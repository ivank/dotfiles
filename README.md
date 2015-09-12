# dotfiles

Bootrap my osx system. Keep my dotfiles inside verstion control to allow rapid rebuild of the system.

## Usage

This is a personal repo and my personal preferences. If you want to use it you're advised to fork and modify it with your own preferences.

## Installation

Clone this to your home folder - this can be done by doing

``` bash
git init
git remote add origin https://github.com/ivank/dotfiles.git
git fetch origin
git checkout -b master --track origin/master
```

Or better yet, fork it in github, and use that as your origin url (so you can do modifications yourself)

After you're done you initiate the install by calling

``` bash
./dotfiles.sh
```

This script is designed to be rerun multiple times.

## Docs

You can read the config files themesleves that I've tried to explain the changes

## Credits
This is inspired by [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) but greatly simplified and streamlined. I am much more happy with the defaults of OSX that's why I don't do much modification there, rathar I strive for simplisity and using the least amount of configurations to achieve an acceptable result.
