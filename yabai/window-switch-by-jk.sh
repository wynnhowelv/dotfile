direction=$1
layout=$(yabai -m query --spaces --space | jq -re ".type")
echo cur $layout $direction > ~/test.txt
case $layout in
  "bsp")
    $(yabai -m window --focus $direction)
    ;;
  "stack")
    echo 0000 >> ~/test.txt
    if [[ "$direction" == "north" ]]; then
      echo 1111 >> ~/test.txt
      $(yabai -m window --focus stack.prev)
    else
      echo 2222 >> ~/test.txt
      $(yabai -m window --focus stack.next)
    fi
    ;;
  "float")
    exit 0
    ;;
esac
