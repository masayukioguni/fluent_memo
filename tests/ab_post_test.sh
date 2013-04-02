#!/bin/sh

ab -n 100 -c 10 -p ./post_data -T "application/x-www-form-urlencoded" http://127.0.0.1:8888/debug.debug
