source ~/.bashrc.linux

export BASH_SILENCE_DEPRECATION_WARNING=1
export GITPERLLIB="/usr/local/opt/git/share/perl5:$(echo /usr/local/opt/subversion/lib/perl5/site_perl/*/darwin-thread-multi-2level):$(echo /usr/local/Cellar/git/*/share/perl5/)"
export PATH=/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
