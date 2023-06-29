isFocused=$(yabai -m query --windows --window | jq -re ".id")
if [[ -z "$isFocused" ]]; then # -z >> true if it's null
    window_id=$(yabai -m query --windows | jq -re ".[] | select(.\"is-visible\" == true and .\"has-focus\" != true).id" | head -n 1)
    $(yabai -m window --focus $window_id)
fi
