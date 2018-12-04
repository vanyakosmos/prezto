# download
git clone -b custom --recursive https://github.com/vanyakosmos/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# setup
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# change shell
chsh -s /bin/zsh
