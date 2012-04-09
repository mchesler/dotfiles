# Matt’s dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Workspace/dotfiles`) The bootstrap.sh script will pull in the latest version and copy the files to your home folder.

```bash
cd && mkdir -pv Workspace && cd Workspace && git clone git://github.com/mchesler/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
./bootstrap.sh -f
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/mchesler/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update later on, just run that command again.

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```bash
# PATH additions
export PATH="~/bin:$PATH"

# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Matt Chesler"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="matt@zipmark.com
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GITHUB_USER="mchesler"
git config --global github.user "$GITHUB_USER"
GITHUB_TOKEN="REDACTED"
git config --global github.token "$GITHUB_TOKEN"
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/mchesler/dotfiles/issues)!

## Inspiration

Drawn from [Mathias's dotfiles](https://github.com/mathiasbynens/dotfiles)

https://github.com/mchesler/dotfiles