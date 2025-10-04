#
#
#--------------------------
#LS QUALITY OF LIFE UPDATES
#--------------------------

##----
## LS
##----

##ls now shows everything by default
alias ls='ls -A --color=auto'

##-----
## LSS 
##-----
##lss (LiSt Short) acts as regular ls, showing short (nonhidden) results
###the 'command' in this alias ensures bypassing of other ls aliases (see above)
###to ensure proper function. 
alias lss='command ls --color=auto'

##----
## LL
##----
##ll (List Long) shows long, hidden, tree, and with permissions
alias ll='ls -lah --color=auto'

##--------------
##LS PAGINATION!
##--------------
alias lsp='lsp_function'

#--------
#NEOFETCH
#--------
#force fixes a weird issue
#neofetch alias to properly display the custom ascii file
alias neofetch='neofetch --ascii --source "${HOME}/.config/neofetch/ascii.txt"'

#---------
#CLIPBOARD
#---------
#copies the specified input to the clipboard using xclip
alias clipboard='xclip -selection clipboard'

#--------------------
#SOURCE / RELOAD BASH
#--------------------
#reruns the source command to refresh: 
#.bashrc, .bash_aliases, and .bash_functions all at once

alias sourcebash="for file in ~/.bashrc ~/.bash_aliases ~/.bash_functions; do source $file; done"


