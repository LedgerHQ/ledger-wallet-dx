source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle adb
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# Patch allowing to fix an error in openssl when installing ruby 2.7.2 on Mac M1
# cf : https://github.com/openssl/openssl/issues/18720#issuecomment-1180702773
export OPENSSL_CFLAGS=-Wno-error=implicit-function-declaration

# Rbenv setup in path
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# smartling
export SMARTLING_USER_ID="enterYourSmartlingUserId"
export SMARTLING_USER_SECRET="enterYourSmartlingUserSecret"

# brew
export PATH=$PATH:/opt/homebrew/bin

# proto
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/bin:$PATH"

# android sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# java
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.20.1/libexec/openjdk.jdk/Contents/Home
