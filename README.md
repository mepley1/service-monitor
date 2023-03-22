# service-monitor
A simple monitor script for systemd-controlled services. 

To run it every 5 minutes, add a cron job:

`sudo su`

`crontab -e`

Then in nano/vi, add: `*/5 * * * * ~/service-monitor.sh`
