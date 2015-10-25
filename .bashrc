# Bashrc and bash_profile are read differently in different contexts
# This allows for one config file for all contexts
# http://stackoverflow.com/a/415444
[ -n "$PS1" ] && source ~/.bash_profile;

# added by travis gem
[ -f /Users/ivankerin/.travis/travis.sh ] && source /Users/ivankerin/.travis/travis.sh
