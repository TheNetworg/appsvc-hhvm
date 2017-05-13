#!/bin/bash
service ssh start
touch /home/LogFiles/node_${WEBSITE_ROLE_INSTANCE_ID}_out.log
echo "$(date) Container started" >> /home/LogFiles/node_${WEBSITE_ROLE_INSTANCE_ID}_out.log
/usr/bin/hhvm -m server -c "/etc/hhvm/server.ini" -c "/etc/hhvm/site.ini"
