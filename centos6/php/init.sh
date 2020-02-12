#!/bin/sh

if [ -f /tmp/data.sql ]; then
  mysql -udbuser -pdbpass db < /tmp/data.sql
fi