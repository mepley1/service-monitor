# service-monitor
A simple monitor script for systemd-controlled services. 
Requires one argument, the name of a service unit. 

First, run once to test permissions before creating a cron job:

`./service-monitor.sh <service>` i.e. `./service-monitor.sh mysql`

For best results run it as a cron job: (either as root or a user with permissions to restart whatever service)

`sudo su`

`crontab -e`

Then in nano/vi, add a job: `*/5 * * * * ~/service-monitor.sh`
