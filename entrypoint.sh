#!/bin/sh -l
echo "version=$(/tag-version $1 $2)" >> $GITHUB_OUTPUT