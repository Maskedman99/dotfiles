# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

green="#35bf5c" 
red="#ff0000"
blue="#7aa6da"
orange="#ff9f00"
black="#000000"
white="#ffffff"
pink="#ff69b4"

common() {
  printf "\"separator\":false,\"separator_block_width\":5,"
  printf "\"border\": \"$blue\",\"border_left\":1,\"border_right\":0,\"border_bottom\":0,\"border_top\":0,},"
}

kernel_version=" $(uname -r | cut -d '-' -f1)"

function datetime(){
  date_formatted=$(date "+ %a %d-%h-%Y %l:%M %p")
}

battery(){
  # Returns the battery status: "Full", "Discharging", or "Charging"
  battery_status=$(cat /sys/class/power_supply/BAT0/status)
  if [ "$battery_status" = "Full" ] ; then battery_icon="" ; 
  elif [ "$battery_status" = "Charging" ] ; then battery_icon="" ; 
  else battery_icon=" " ; fi

  charge=$(cat /sys/class/power_supply/BAT0/capacity)
  if [ $charge -eq 100 ] ; then color=$green ; elif [ $charge -gt 50 ] ; then color=$orange ; else color=$red ; fi
  
  printf "{\"name\":\"id_battery\",\"color\":\"$color\",\"full_text\":\"$battery_icon $charge\","
  common
}

diskfree(){ 
  printf "{\"name\":\"id_disk\",\"color\":\"$pink\",\"full_text\":\" $(df -H -l --output='avail' "$HOME" | grep -E -o '[0-9]+G')\","
  common
}

memory(){
  printf "{\"name\":\"id_memory\",\"color\":\"$green\","
  printf "\"full_text\":\"  $(free -h --si | grep Mem | awk '{ printf("%s - %s", $3,$4) }')\","
  common
}

load(){ 
  printf "{\"name\":\"id_cpu\",\"color\":\"$blue\","
  printf "\"full_text\":\" $(cat /proc/loadavg | awk -F ' ' '{print $2}')\","
  common
}

brightness(){ 
  printf "{\"name\":\"id_brightness\",\"color\":\"$pink\","
  printf "\"full_text\":\" $(brightnessctl | grep Current | awk -F'[(%)]' '{print $2}')\","
  common
}

network(){ 
  local text=$(nmcli | grep -w connected | cut -d' ' -f4)
  printf "{\"name\":\"id_network\","
  [ "$text" ] && printf "\"color\":\"$orange\",\"full_text\":\"  $text\"," || printf "\"color\":\"$red\",\"full_text\":\"!\","
  common
}

volume(){
  printf "{\"name\":\"id_volume\",\"color\":\"$green\","
  printf "\"full_text\":\"$(amixer get Master | awk '/Mono.+/ {print $6=="[off]"?" MUTE":" "$4}' | tr -d '[%]')\","
  common
}


echo '{ "version": 1, "click_events":true }'
echo '['
echo '[]'

(while :
do 
  datetime
  printf ",["
# KERNEL VERSION
  printf "{\"name\":\"id_kernel\",\"color\":\"$orange\",\"full_text\":\"$kernel_version\","
  common

  diskfree
  memory
  load
  battery
  network
  brightness
  volume
# DATE-TIME
  printf "{\"name\":\"id_time\",\"color\":\"$white\",\"full_text\":\"$date_formatted\","
  common

# Ending the Array
  printf "]"
# Refrsh Rate
  sleep 10
done) &

# Listening for STDIN events
while read line;
do
  # echo $line > /tmp/tmp.txt
  # on click, we get from STDIN :
  # {"name":"id_time","button":1,"modifiers":["Mod2"],"x":2982,"y":9,"relative_x":67,"relative_y":9,"width":95,"height":22}

  # DATE click
  if [[ $line == *"name"*"id_time"* ]]; then alacritty --class=launcher -e dash -c 'cal -my; sleep 10' &

  # CPU click
  elif [[ $line == *"name"*"id_cpu"* ]]; then
    alacritty -e htop &
  fi
done

