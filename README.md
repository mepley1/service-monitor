# service-monitor
A simple monitor script for systemd-controlled services. 
Accepts one argument, the name of a service unit. 

To run once:
`./service-monitor.sh <service>` i.e. `./service-monitor.sh mysql`

For best results run it as a cron job: (need root's crontab so it can restart services)

`sudo su`

`crontab -e`

Then in nano/vi, add a job: `*/5 * * * * ~/service-monitor.sh`
