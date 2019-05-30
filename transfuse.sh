#!/usr/bin/env bash
#                        transfuse.sh                       #
## Automates backing up and restoring Plasma user configs   #
#####                        cscs                       #####

# What do you want?
if [ $# -eq 0 ]; then
    echo -e "\n I dont know what to do\n";
    echo -e "Possible commands:\n 'backup' to create a compressed backup\n 'copy' to copy without compressing (useful for editing)\n 'compress' to compress a transfusion folder (such as after using 'copy')\n 'restore' to merge a backup into your home directory\n";
    echo -e "For example:\n ./transfuse.sh backup\n";
    exit;
fi
# Ugh. What time is it?
NOW=$(date +"%Y%m%d_%H%M")
# Who are you anyways?
#YOU=$(who am i | awk '{print $1}')
# We dont need no stinkin coppers.
if [ "$EUID" = 0 ]
  then echo -e "\nDo not run this script as root!\n";
  exit;
fi

case "$1" in

-b|backup)if

 read -p "Please enter the name of the user to backup and compress configs from: "  YOU
 mkdir -p ./"$YOU"_transfusion_"$NOW";
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.config;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.gtkrc-2.0;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.kde;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.kde4;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.local/share;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/auroraerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/autostart-scripts ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/autostart ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/breezerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/dolphinrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/gtk-3.0 ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katemetainfos ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kateschemarc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katevirc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kde.org ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kdeconnect ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kdeglobals ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kglobalshortcutsrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/khotkeysrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/konsolerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kscreenlockerrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/ksplashrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kvantum ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kwinrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kwinrulesrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/latte ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/lattedockrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma-org.kde.plasma.desktop-appletsrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma-workspace ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma_calendar_holiday_regions ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasmarc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasmashellrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/powermanagementprofilesrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/pulse/*.conf ./"$YOU"_transfusion_"$NOW"/.config/pulse/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/qtcurve ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/trolltech.conf ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.gtkrc-2.0 ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.kde ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.kde4 ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/aurorae ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/color-schemes ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/kate ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/konsole ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/kservices5 ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/plasma ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/plasma_icons ./"$YOU"_transfusion_"$NOW"/.local/share/;
 tar -zcvf ./"$YOU"_transfusion_"$NOW".tar.gz ./"$YOU"_transfusion_"$NOW";
 rm -rf ./"$YOU"_transfusion_"$NOW";
 then echo -e "\n\nWe copied and compressed items recursively from:\n\n~\n~/.config\n~/.local/share\n\nThe compressed backup is named "$YOU"_transfusion_"$NOW".tar.gz\n" ;
 else echo "Something went wrong! Yell at cscs!" ;
 exit;
 fi;; # backup and squish

-BR|backuproot)if

 mkdir -p ./root_transfusion_"$NOW";
 mkdir -p ./root_transfusion_"$NOW"/usr/share;
 rsync -av --ignore-missing-args /usr/share/aurorae ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/color-schemes ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/fonts ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/icons ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/kde-gtk-config ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/kde4 ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/konsole ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/Kvantum ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/plasma ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/sddm ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/themes ./root_transfusion_"$NOW"/usr/share/;
 rsync -av --ignore-missing-args /usr/share/wallpapers ./root_transfusion_"$NOW"/usr/share/;
 tar -zcvf ./root_transfusion_"$NOW".tar.gz ./root_transfusion_"$NOW";
 rm -rf ./root_transfusion_"$NOW";
 then echo -e "\n\nWe copied and compressed items recursively from:\n\n/usr/share/\n\nThe compressed backup is named root_transfusion_"$NOW".tar.gz\n" ;
 else echo "Something went wrong! Yell at cscs!" ;
 exit;
 fi;; # backup and squish

-C|copy)if

 read -p "Please enter the name of the user to copy configs from: "  YOU
 mkdir -p ./"$YOU"_transfusion_"$NOW";
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.config;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.gtkrc-2.0;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.kde;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.kde4;
 mkdir -p ./"$YOU"_transfusion_"$NOW"/.local/share;
 #rsync || true
 rsync -rltD --ignore-missing-args /home/$YOU/.config/auroraerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/autostart-scripts ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/autostart ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/breezerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/dolphinrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/gtk-3.0 ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katemetainfos ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kateschemarc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/katevirc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kde.org ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kdeconnect ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kdeglobals ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kglobalshortcutsrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/khotkeysrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/konsolerc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kscreenlockerrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/ksplashrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kvantum ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kwinrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/kwinrulesrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/latte ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/lattedockrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma-org.kde.plasma.desktop-appletsrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma-workspace ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasma_calendar_holiday_regions ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasmarc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/plasmashellrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/powermanagementprofilesrc ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/pulse/*.conf ./"$YOU"_transfusion_"$NOW"/.config/pulse/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/qtcurve ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.config/trolltech.conf ./"$YOU"_transfusion_"$NOW"/.config/;
 rsync -rltD --ignore-missing-args /home/$YOU/.gtkrc-2.0 ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.kde ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.kde4 ./"$YOU"_transfusion_"$NOW"/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/aurorae ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/color-schemes ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/kate ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/konsole ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/kservices5 ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/plasma ./"$YOU"_transfusion_"$NOW"/.local/share/;
 rsync -rltD --ignore-missing-args /home/$YOU/.local/share/plasma_icons ./"$YOU"_transfusion_"$NOW"/.local/share/;
 then echo -e "\n\nWe copied items recursively from:\n\n~\n~/.config\n~/.local/share\n\nThe new directory is timestamped and named "$YOU"_transfusion_"$NOW"\n" ;
 else echo "Something went wrong! Yell at cscs!" ;
 exit;
 fi;; # make a folder but dont sit on it

-c|compress)if

 COPYDIR=$(find . -type d -name '*_transfusion_*')
 find . -type d -name '*_transfusion_*' -exec sh -c 'i="$1"; tar -zcvf "${i%}.tar.gz" "$i"' _ {} \;
# COPYDIR=$(find -type d -name "*_transfusion_*")
# tar -zcvf "$COPYDIR".tar.gz "$COPYDIR";
# rm -rf ./"$YOU"_transfusion_"$NOW";
 then echo -e "\n\nCompressed items recursively from:\n\n"$COPYDIR"\n";
 else echo "Something went wrong! Yell at cscs!" ;
 exit;
 fi;; # now you can sit on it

-h|help)

 echo -e "\nPossible commands:\n 'backup' to create a compressed backup\n 'copy' to copy without compressing (useful for editing)\n 'compress' to compress a transfusion folder (such as after using 'copy')\n 'restore' to merge a backup into your home directory\n";
 echo -e "For example:\n ./transfuse.sh backup\n";
 exit;;
 
-r|restore)if

 TRANSF=$(find . -type f -name '*_transfusion_*.gz')
 read -p "Please enter the name of the user to restore configs to: "  PATIENT
 tar -xzvf "$TRANSF" ;
 COPYF=${TRANSF::-7}
 rsync -rltD --ignore-missing-args $COPYF/ --include=".*" /home/$PATIENT/ || echo "Are you sure that was the right username?" && exit ;
 rm -rf "$COPYF" ;
 then echo -e "\nConfigs Restored from $COPYF\n" ;
 else echo "Something went wrong! Yell at cscs!" ;
 exit;
 fi;; # restore from backup

esac

exit
