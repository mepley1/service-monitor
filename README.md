# service-monitor
A simple monitor script for systemd-controlled services. Checks for a non-zero exit code (meaning the targeted service has failed) and if so, restarts the service unit. 
Requires one argument, the name of a service unit. 

## Usage

Run once:

`./service-monitor.sh <service>` i.e. `./service-monitor.sh mysql`

It will create a log file in the user's home dir, and append it with a timestamp each time it finds that the targeted service has failed. 
If you want email alerts as well, edit the `$alert_email` variable at the top of the script. (mailutils must be installed on Debian, or mailx on RHEL)

For best results run it as a cron job every 5 minutes or so. (either as root or a service account with permissions to restart whatever service, otherwise the job will fail):

`sudo su`

`crontab -e`

Then in nano/vi, add a job: `*/5 * * * * ~/service-monitor.sh mysql`

## To do:
- Move log file to /var/log for the sake of standardisation
- Check for existence of mailutils before attempting to send email, or separate it to use a -m flag
- Make an install.sh to automate adding+removing cron job + email config?
- 
