#!/bin/sh
#
# This is SubGit sample credential helper script.
# 
# Script is expected to provide credentials necessary to access Subversion repository.
#
# Script uses Input/Output protocol similar to that of Git credential helper with 
# the exception that it is only called to get credentials, so command name could be 
# ignored.
#
# Credential helper script is expected to be non-interactive, as it might be 
# executed by a background process that has no access to the shell.
#
# Input/Output protocol: 
#
# Input:
#
# url=SVN_URL
# protocol=SVN_URL_PROTOCOL
# path=SVN_URL_PATH
# # optional:
# username=PREFFERED_SVN_USER_NAME
#
# Output:
#
# username=SVN_USER_NAME
# password=SVN_PASSWORD
#
# More details on the protocol could be found at 'https://www.kernel.org/pub/software/scm/git/docs/git-credential.html#IOFMT'
#
# Script that implements Input/Output protocol referenced above could be specified as a value
# of auth.credentialHeplper configuration option in SubGit configuration file 
# along with the optional arguments:
#
# [auth "default"]
#
# credentialHelper = /path/to/credentialHelper [args]
#
# Script is always executed in the Git repository root directory.
# 

echo username=svnUser
echo password=svnPassword

exit 0;