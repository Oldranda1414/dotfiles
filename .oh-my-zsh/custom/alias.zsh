# This file contains all user defined aliases

# For a full list of active aliases, run `alias`.

# Handy alias for exiting
alias e=exit

# Batcat into bat (supercharged version of cat)
alias bat=batcat

# Cat into bat (modern version of cat)
alias cat=bat

# Easy turn off machine
alias turnoffnow="shutdown -h now"

# Easy restart machine
alias restartnow="shutdown -r now"

# ls into exa (modern ls)
alias ls="exa --color=always --long --no-filesize --icons --no-time --no-user --no-permissions"


# Executes htop to find faulty process id
alias stuck=htop

# Opens vs code with current folder opens
alias code="code ."

# Kills all gradle daemons existing
alias gradlekill="pkill -f '.*GradleDaemon.*'"

# Sets alias for thefuck command
eval $(thefuck --alias)

# Dumb aliases {

  # Starts port royale 2
  alias pr2="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Port\ Royale\ 2/Inizio\ del\ gioco.exe"

  # Starts star wars in ASCII
  alias movie="telnet towel.blinkenlights.nl"

  # Creates matrix screen
  alias matrix="cmatrix -s"

  # Funny parrot dancing
  alias parrot="curl parrot.live"

# }

