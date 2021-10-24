#!/bin/bash

source ./dummy-ops/.env
source ./utils/logger.sh

main() {
  action=$1
  user=$2
  name="${GREETER_NAME:-"kitty"}"

  if [[ -z "${user}" ]]; then
    user="${name}"
  fi

  if [[ "${action}" == "--hello" ]]; then

    log_info "Hello, ${user}"

  elif [[ "${action}" == "--how-are-you" ]]; then

    log_info "${user}, how are you?"

  elif [[ "${action}" == "--goodbye" ]]; then

    log_info "Goodbye, ${user}"

  else
    log_fatal "Invalid flag, supported values: --hello, --how-are-you, --goodbye."
  fi

  sleep 1
}

main "$@"

