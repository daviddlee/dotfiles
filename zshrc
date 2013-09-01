alias cls="clear && ls"
alias rf="source ~/.zshrc"
alias vr="vim ~/dotfiles/vimrc"
alias bp="vim ~/dotfiles/zshrc"
alias dot="cd ~/dotfiles"
alias sampapp="cd ~/rails_projects/sample_app"

# PRETTY GIT LOG
glp() {
  # Defaults
  limit=""; all=""
  format="%Cred%h%Creset -%C(yellow)%d%Creset %C(white)%s%Creset %Cgreen(%cr) %C(bold blue)<%an>%Creset"
  # If extra options
  if [[ "$1" = *-* ]]; then
    # Long Format
    if [[ "$1" = *l* ]]; then
      format="%Cred%h%Creset -%C(yellow)%d%Creset %Cgreen(%cr) %C(bold blue)<%an> %n%C(white)### %C(white)%s %Creset %n%n%b"
    fi
    # All branches
    if [[ "$1" = *a* ]]; then all="--all"; fi
    # Limit Number
    if [[ "$2" != "" ]]; then limit="-n $2"; fi
  # Else if limit
  elif [[ "$1" != "" ]] && [[ "$1" != *-* ]]; then limit="-n $1"; fi

  # Output
  if [[ "$limit" != "" ]]; then
    git log $limit $all --graph --abbrev-commit --pretty=tformat:$format | cat
  else
    git log $all --graph --abbrev-commit --pretty=tformat:$format
  fi
}

# PRETTY GIT LOG ALIAS
alias glpa="glp -a"
alias glpl="glp -l"
alias glpla="glp -la"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
