#!/bin/bash
inotifywait -e modify -m /home/deb/test | while read; 
echo "This is the body of the email" | mail -s "This is the subject line" root; 
done
