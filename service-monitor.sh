#!/bin/sh
# Check if a service is active, if not then restart it and send alert.
# Run this script as a cron job every 5-10 minutes.

service_name="vmtoolsd"

if ! systemctl is-active --quiet $service_name; then
#  echo "$service_name is running."
#else
  date +"%D %T $service_name is down, restarting..." >> ~/$service_name-restart-log.txt
  systemctl restart $service_name
  date +"%D %T $service_name is down. Attempting to restart it, but you may still want to check the service."|mail -s "Alert: $service_name is down" alerts@deathmetal.me
fi
