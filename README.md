# Dotfiles

## Installation

Run the following commands

```bash
git clone --bare https://github.com/mayocca/dotfiles.git .dotfiles
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> .zshrc # Or .bashrc
source .zshrc # Or .bashrc
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

Now you can use the `dotfiles` alias as a wrapper for `git` to interact with your dotfiles repo.
This is needed because you are using a bare repo instead of a standard, non-bare repo.

