# Add these lines in /home/pi/.bash_aliases
alias cputemp='echo $(awk "BEGIN {printf \"%.1f\",$(</sys/class/thermal/thermal_zone0/temp)/1000}")°C'
alias gputemp='VAR=$(/opt/vc/bin/vcgencmd measure_temp) && echo ${VAR:5:4}°C'
alias temps='echo CPU: $(cputemp) - GPU: $(gputemp)'
