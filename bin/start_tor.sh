#!/bin/bash

/etc/init.d/tor start
/etc/init.d/privoxy start
socat -d tcp-listen:9051,reuseaddr,fork tcp:127.0.0.1:9052 &
