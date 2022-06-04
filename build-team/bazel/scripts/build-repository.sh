#!/bin/bash

source ./build-team/bazel/.env
source ./utils/logger.sh

main() {
  local user=$1

  log_info "User ${user} issues a new Bazel build"

  echo "
  GIT_REPO: ${GIT_REPO}
  BRANCH: ${BRANCH}
  RC_FILE_PATH: ${RC_FILE_PATH}
  INVOCATION_ID: ${INVOCATION_ID}
"

  log_info "Build is starting..."

  sleep 1

  echo -e "\nbazel build //..."

  sleep 1
}

main "$@"

