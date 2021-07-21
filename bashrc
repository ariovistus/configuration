
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth.sock
fi 
export SSH_AUTH_SOCK=~/.ssh/ssh_auth.sock
