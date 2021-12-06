# bash
bash configuration for personal use.

## how to use this repository
1. clone this repository into ~/bash
``` shell
cd ~
git clone https://github.com/florianmaier101178/bash.git
```
2. execute [setup script](https://github.com/florianmaier101178/bash/blob/master/setup.sh)
``` shell
./setup.sh
```

## customization
### bashrc.d
don't put stuff directly in ~/.bashrc, instead use a concrete file inside ~/.bashrc.d/
``` shell
EXAMPLE:
~/.bashrc.d/aliases.bashrc
```
### bash_completion.d
put bash completion stuff in ~/.bash_completion.d/
``` shell
EXAMPLE:
~/.bash_completion.d/dbc_bash_completion
```
