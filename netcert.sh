service codemeter stop
echo '[ServerSearchList\Server1]' >> /etc/wibu/CodeMeter/Server.ini
echo "Address=${CodeMeter_Server}" >> /etc/wibu/CodeMeter/Server.ini
service codemeter start  && sleep 2 && service codemeter status && cmu -k