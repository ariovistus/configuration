
if [ ! -e ~/.ssh/ssh_auth.sock ]; then
  rm ~/.ssh/ssh_auth.sock
fi

if [ ! -e ~/.ssh/ssh_auth.sock ]; then 
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth.sock
fi 
export SSH_AUTH_SOCK=~/.ssh/ssh_auth.sock
