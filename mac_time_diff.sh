last_reboot=$(awk -F'[ ,]' '{print $4}' /tmp/aa.txt)
current_time=$(date +%s)
time_difference=$((current_time - last_reboot))
echo $time_difference > /tmp/diff.txt