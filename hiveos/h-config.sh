#!/usr/bin/env bash
# This code is included in /hive/bin/custom function

[[ -z $CUSTOM_TEMPLATE ]] && echo -e "${YELLOW}CUSTOM_TEMPLATE is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_URL ]] && echo -e "${YELLOW}CUSTOM_URL is empty${NOCOLOR}" && return 1

[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}No CUSTOM_CONFIG_FILENAME is set${NOCOLOR}" && return 1

conf="--url ${CUSTOM_URL} --user ${CUSTOM_TEMPLATE} --pass ${CUSTOM_PASS} ${CUSTOM_USER_CONFIG}"
echo "$conf" > $CUSTOM_CONFIG_FILENAME
