## Bashrc

PATH = ~/.bashrc

```
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias v='source $HOME/everyday-scripts/virtualenv.sh'
alias g='$HOME/everyday-scripts/git.sh'
alias z='$HOME/everyday-scripts/meeting.sh &'
alias p='$HOME/everyday-scripts/python_check.sh'
alias j='docker run --volumes-from jenkins -p 8080:8080 -p 50000:50000 -v /var/jenkins_home jenkins/jenkins:lts & > /dev/null'
alias azure-storage='nohup $HOME/everyday-scripts/AzureStorage/StorageExplorer &'
alias pwsh='TERM=xterm pwsh'

```
## Use Zsh

After Installing Zsh - https://ohmyz.sh/
