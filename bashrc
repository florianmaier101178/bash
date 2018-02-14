# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# source files in ~/.bashrc.d/
for bashrcdfile in ~/.bashrc.d/* ; do
    . $bashrcdfile
done

# source files in ~/.bash_completion.d/ 
for bashcompletionfile in ~/.bash_completion.d/* ; do                                                                                           
    . $bashcompletionfile
done

# nothing should be added directly to .bashrc, use .bashrc.d/ instead
