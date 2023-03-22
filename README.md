# service-monitor
A simple service monitoring script, to run as a cron job.

To run it every 5 minutes, add a cron job like:
`sudo su`
`crontab -e`
`*/10 * * * * ~/service-monitor.sh`
