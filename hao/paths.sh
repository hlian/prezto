# https://github.com/sfackler/rust-openssl/issues/255
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include

if [[ -d ~/.local/bin ]]; then
  path=("$HOME/.local/bin" $path)
  path=("$HOME/.stack/programs/x86_64-osx/ghc-8.0.2/bin" $path)
fi

if [[ -d ~/.cask/bin ]]; then
  path=("$HOME/.cask/bin" $path)
fi

if [[ -d ~/.cargo/bin ]]; then
  path=("$HOME/.cargo/bin" $path)
  export RUST_SRC_PATH=/Users/h/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
fi

export WORDCHARS=
export CLICOLOR=1
export LESS=-Ri
export LSCOLORS=ExFxCxDxBxegedabagacad

export FZF_DEFAULT_OPTS='--color=bg+:130,bg:-1,spinner:#719e07,hl:11,fg:-1,header:#586e75,info:#cb4b16,pointer:#719e07,marker:#719e07,fg+:88,prompt:226,hl+:11'

if [[ -d ~/gopath ]]; then
  export GOROOT=/usr/local/opt/go/libexec
  export GOPATH=~/gopath
  path=($path "$GOROOT/bin" "$GOPATH/bin")
fi
