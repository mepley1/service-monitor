# service-monitor
A simple monitor script for systemd-controlled services. Checks for a non-zero exit status (meaning the targeted service has failed) and if so, restarts the service unit. 
Requires one argument, the name of a service unit. 

## Usage

Run once

`./service-monitor.sh <service>` i.e. `./service-monitor.sh mysql`

It will create a log file in the user's home dir, and append it with a timestamp if the targeted service has failed. 
If you want email alerts as well, edit the `$alert_email` variable at the top of the script. 

For best results run it as a cron job (either as root or a user with permissions to restart whatever service, otherwise the job will fail):

`sudo su`

`crontab -e`

Then in nano/vi, add a job: `*/5 * * * * ~/service-monitor.sh mysql`
