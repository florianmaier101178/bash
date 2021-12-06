# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# source files in ~/.bashrc.d/
for bashrcdfile in ~/.bashrc.d/* ; do
    . $bashrcdfile
done


# https://askubuntu.com/questions/545540/terminal-autocomplete-doesnt-work-properly
# sudo apt-get install --reinstall bash-completion
# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# source files in ~/.bash_completion.d/ 
for bashcompletionfile in ~/.bash_completion.d/* ; do                                                                                           
    . $bashcompletionfile
done

# nothing should be added directly to .bashrc, use .bashrc.d/ instead
