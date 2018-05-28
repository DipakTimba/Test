#!/bin/sh
#
# This is SubGit sample authors mapping script.
# 
# Script is expected to provide the following mappings:
#
# Git author name and email => Subversion user name
# Subversion user name => Git author name and email
#
# Script reads values from the standard input and, depending on the values, it outputs either 
# full Git author name and email or short Subversion user name.
#
# Input/Output protocol:
#
# Input:
# FULL NAME
# EMAIL
# Output:
# SHORT_SVN_NAME
#
# Input:
# SHORT_SVN_NAME
# Output:
# FULL NAME
# EMAIL
#
# Authors mapping script may be used instead or together with the static authors mapping.
#
# Script that implements Input/Output protocol described above could be specified as a value
# of core.authorsFile configuration option in SubGit configuration file with optional arguments:
#
# [core]
#
# authorsFile = /path/to/mappingScript [args]
# authorsFile = /path/to/staticMappingFile.txt
#
# Script is always executed in the repository root directory.
#

while read input
do
  if [ -z "$name" ]; then
    name="$input"
  elif [ -z "$email" ]; then
   email="$input"
  fi
done

if [ -z "$email" ]; then
  echo Full Name
  echo author@email.com
else
  echo shortSvnUserName
fi

exit 0;