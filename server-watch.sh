#!/bin/bash
##################################################################################################
## ABOUT                                                                                        ##
##################################################################################################
## serverscript v1.0 by devvis                                                                  ##
##################################################################################################
## Be sure to edit the server-variable to contain the full path to your minecraft_server.jar if ##
## this script isn't running from the same working-dir as the server.                           ##
## Note that if you're using the Bukkit server-mod, please uncomment the other server-line and  ##
## comment out/remove the minecraft_server.jar-one.                                             ##
##################################################################################################

############
## CONFIG ##
############
server="java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui";
#server="java -Xmx1024M -Xms1024M -jar craftbukkit.jar"


############################################################################
## DO NOT EDIT ANYTHING BELOW THIS LINE UNLESS YOU KNOW WHAT YOU'RE DOING ##
############################################################################
ver="1.0"

echo "serverscript v$ver by devvis started"
echo "Running on `uname -o`"

until $server; do
    echo "Minecraft-server crasched with error-code $?.  Restarting..." >&2
    sleep 1
done
