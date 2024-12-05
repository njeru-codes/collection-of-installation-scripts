#!/bin/bash

docker image pull dradis/dradis-ce:latest

docker run -it -p 3000:3000 dradis/dradis-ce