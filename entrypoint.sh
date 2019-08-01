#!/bin/sh
echo ${GIT_DIR_PREFIX}
echo ${GIT_HOST}
echo ${GIT_ORG}
echo ${REPO}
git clone --mirror git://${GIT_HOST}/${GIT_ORG}/${GIT_REPO}.git ${GIT_DIR_PREFIX}/${REPO}
touch ${GIT_DIR_PREFIX}/${GIT_REPO}/git-daemon-export-ok
git daemon --reuseaddr ${GIT_DIR_PREFIX}/${GIT_REPO} &
exec "$@"
