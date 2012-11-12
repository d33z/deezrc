# Add in any user-specific setup parts here...



# --- PULL IN GLOBAL BASHRC ---
PATH_TO_GLOBAL_BASHRC="$HOME/.deezrc/dotfiles/global/.bashrc"

if [ -f $PATH_TO_GLOBAL_BASHRC ]; then
  source $PATH_TO_GLOBAL_BASHRC
else
  echo "Could not find the global .bashrc at:"
  echo "$PATH_TO_GLOBAL_BASHRC"
fi



# Add in any user-specific overrides here...


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
