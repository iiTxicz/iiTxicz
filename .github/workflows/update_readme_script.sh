#!/bin/bash

function is_valid_url() {
    curl --output /dev/null --silent --head --fail "$1"
}

OLD_URL="https://api-github-stats.iitxicz.com/api?username=iiTxicz&show_icons=true&theme=shadow_green"
NEW_URL="https://api-github-stats.iitxicz.com/api?username=iiTxicz&show_icons=true&theme=shadow_green"

if is_valid_url "$NEW_URL"; then
    sed -i "s|$OLD_URL|$NEW_URL|g" README.md
    echo "README updated with the new URL: $NEW_URL"
else
    echo "Invalid URL: $NEW_URL. README not updated."
fi
