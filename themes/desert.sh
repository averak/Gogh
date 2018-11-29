#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#4d4d4d"           # HOST
export COLOR_02="#ff2b2b"           # SYNTAX_STRING
export COLOR_03="#98fb98"           # COMMAND
export COLOR_04="#f0e68c"           # COMMAND_COLOR2
export COLOR_05="#cd853f"           # PATH
export COLOR_06="#ffdead"           # SYNTAX_VAR
export COLOR_07="#ffa0a0"           # PROMP
export COLOR_08="#f5deb3"           #

export COLOR_09="#555555"           #
export COLOR_10="#ff5555"           # COMMAND_ERROR
export COLOR_11="#55ff55"           # EXEC
export COLOR_12="#ffff55"           #
export COLOR_13="#87ceff"           # FOLDER
export COLOR_14="#ff55ff"           #
export COLOR_15="#ffd700"           #
export COLOR_16="#ffffff"           #

export BACKGROUND_COLOR="#333333"   # Background Color
export FOREGROUND_COLOR="#ffffff"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Desert"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi