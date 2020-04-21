#!/bin/bash
TIMEOUT=4
cd /home/deb/webApp/
python3 -m venv webAppenv
source webAppenv/bin/activate
pip3 install --upgrade pip
pip3 install wheel
pip3 install uwsgi flask
pip3 install -r requirements.txt
(uwsgi --socket 0.0.0.0:5000 --protocol=http -w wsgi:app) & pid=$!
(sleep $TIMEOUT && kill -HUP $pid) 2>/dev/null & watcher=$!
wait $pid 2>/dev/null && pkill -HUP -P $watcher
deactivate

