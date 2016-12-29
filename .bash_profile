# $HOME/.bash_profile (may need to run "source .bash_profile" to use in current session).

export PATH="/usr/local/bin:$PATH"
export XDG_CONFIG_HOME=~/.config

# Opt-in to Neovim in place of VIM/VI
alias vim='nvim'

# SVN recursive shorthand commands.
alias svaa='svn status | grep '"'"'^?'"'"' | cut -c8- | while read f; do svn add $f; done'
alias svra='svn status | grep '"'"'^!'"'"' | cut -c8- | while read f; do svn rm $f; done'
alias svcl='svn status | grep '"'"'^?'"'"' | cut -c8- | while read f; do rm -R $f; done'

# Check exported version (legacy... mostly leaving for my perl reference so as to recall this handy thing).
# alias bumpCheck='perl -i -p -e "'"s/Version: (\d+)/"Version: ".(1 + $1)/ge"'" *.checksum'

#export PS1='\u@\H:\w>'
export PS1='\u \w >'
export SVN_EDITOR=nvim

# Roselyn requisite.
[ -s "$HOME/.dnx/dnvm/dnvm.sh" ] && . "/Users/shadtischer/.dnx/dnvm/dnvm.sh" # Load dnvm
