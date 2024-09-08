#!/bin/sh

interface=$(sed -n '1p' /root/PPPwn_WRT-main/settings.cfg)
firmware=$(sed -n '2p' /root/PPPwn_WRT-main/settings.cfg)

# kill any previous instance
/root/PPPwn_WRT-main/kill.sh

# Construct and execute the command with the chosen script
/root/PPPwn_WRT-main/pppwn  --interface $interface --fw $firmware --stage1 /root/PPPwn_WRT-main/stage1_$firmware.bin --stage2 /root/PPPwn_WRT-main/stage2_$firmware.bin --auto-retry 
