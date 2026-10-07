#!/bin/sh
#
# mise manages language versions (ruby, node, ...). Everything pinned in
# mise/mise.toml.symlink (linked to ~/.mise.toml) gets installed here.
#
# This runs from `dot` right after homebrew, before the topic installers,
# since those (like node/install.sh) expect mise and its languages to exist.

if test ! -x "$HOME/.local/bin/mise"
then
  curl https://mise.run | sh
fi

MISE="$HOME/.local/bin/mise"

"$MISE" plugins install perl
"$MISE" plugins install php

"$MISE" install
