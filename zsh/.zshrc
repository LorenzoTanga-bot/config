export PATH="$PATH:/Users/lorenzotanganelli/flutter/bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export PATH="/Users/lorenzotanganelli/miniforge3/bin:$PATH"  # commented out by conda initialize

PROMPT='%F{green}%*%f %F{yellow}%n%f: %F{red}%~ $%f '

if [ "$TMUX" = "" ]; then tmux; fi

#echo "
#01101010000110001001011001010010110111101110010000011101011000111010100111110111
#1  110011  011     000110110        001  1011     001     10111 1000  110 011010
#1   000  0 111  01  01000001100  01010 1 1011  01  00000 01101 1 000 1 11 010000
#0 1  1  00 101    0100000110111  0100     011    01110 000000     01 00 1 111101
#1 11   101 111 000  11  0110101  101 10111 11 001  10     11 01100 1 100  110001
#00101100101111011110101110011110111000000011011101110110000000010101111011111010\n" 


alias vim="nvim"
alias ll="ls -la"
alias cl="clear"

alias g++="g++ -std=c++20"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lorenzotanganelli/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lorenzotanganelli/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/lorenzotanganelli/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lorenzotanganelli/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

