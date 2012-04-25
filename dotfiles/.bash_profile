# Add in any user-specific setup parts here...



# --- PULL IN GLOBAL BASH_PROFILE ---
PATH_TO_GLOBAL_BASH_PROFILE="$HOME/.deezrc/dotfiles/global/.bash_profile"
if [ -f $PATH_TO_GLOBAL_BASH_PROFILE ]; then
  source $PATH_TO_GLOBAL_BASH_PROFILE
else
  echo "Could not find the global .bash_profile at:"
  echo "$PATH_TO_GLOBAL_BASH_PROFILE"
fi



# Add in any user-specific overrides here...