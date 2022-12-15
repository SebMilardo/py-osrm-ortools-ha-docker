# syntax=docker/dockerfile:1
FROM sebmilardo/py-osrm-ortools:latest

RUN apt-get update && apt-get -y install gdb cron git libgeos-dev libgeos++-dev linux-perf-5.10

RUN mkdir /osm
COPY us_ct_hartford /osm/us_ct_hartford
