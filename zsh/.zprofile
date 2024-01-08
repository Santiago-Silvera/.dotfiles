export XDG_CONFIG_HOME=$HOME/.config
VIM="nvim"

PERSONAL=$XDG_CONFIG_HOME/personal
source $PERSONAL/env
for i in `find -L $PERSONAL`; do
    source $i
done

export NRDP="$HOME/work/nrdp"
export NRDP_BUILDS="$HOME/work/builds"
export CC="clang-12"
export CXX="clang++-12"
export PYTHONBREAKPOINT="pudb.set_trace"
export GOPATH=$HOME/go
export DARWINS_DIR="$HOME/work/darwins"
export TVUI="$HOME/work/tvui"
export API_TOOLS=$HOME/work/tools/edge/scripts
export GIT_EDITOR=$VIM
export EOSIO_INSTALL_DIR=$HOME/personal/eos
export NF_IDFILE=$HOME/.idfile
export DENO_INSTALL="$HOME/.deno"
export N_PREFIX="$HOME/.local/n"
export DOTFILES=$HOME/.dotfiles
export BOGART=$HOME/work/bogart

addToPathFront $HOME/.zig
addToPathFront $HOME/.local/.npm-global/bin
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.local/bin
addToPathFront $HOME/.local/n/bin/
addToPathFront $HOME/.local/go/bin
addToPathFront $HOME/go/bin
addToPathFront $HOME/personal/sumneko/bin
addToPathFront $HOME/.deno/bin
bindkey -s ^f "tmux-sessionizer\n"

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(/opt/homebrew/bin/brew shellenv)"
