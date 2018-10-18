#!/bin/bash

ifconfig en1 | grep inet | awk '{ print $2 }'
