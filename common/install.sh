if [ "$OOS" ]; then
  ui_print " "
  ui_print "   Oxy-ify is only for non-OOS devices!"
  ui_print "   DO YOU WANT TO IGNORE OUR WARNINGS AND RISK A BOOTLOOP?"
  ui_print "   Vol Up = Yes, Vol Down = No"
  if $VKSEL; then
    ui_print " "
    ui_print "   Ignoring warnings..."
  else
    ui_print " "
    ui_print "   Exiting..."
    abort
  fi
fi

ui_print " "
ui_print " - Boot Animation Option -"
ui_print "   Do you want Oxygen OS boot animation?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling boot animation..."
  mkdir -p $MAGISK_SIMPLE$BFOLDER
  cp -f $INSTALLER/common/options/bootanimation.zip $MAGISK_SIMPLE$BFOLDER$BZIP
else
  ui_print " "
  ui_print "   Disabling boot animation..."
fi

ui_print " "
ui_print " - Font Option -"
ui_print "   Do you want OnePlus Slate font?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom fonts..."
else
  ui_print " "
  ui_print "   Disabling custom fonts..."
  rm -rf $INSTALLER/system/fonts
fi

ui_print " "
ui_print " - Ringtone Option -"
ui_print "   Do you want Oxygen OS custom media sounds (ringtones, alarms, notification and UI sounds)? "
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling custom media sounds..."
else
  ui_print " "
  ui_print "   Disabling custom media sounds..."
  rm -rf $INSTALLER/system/media/audio
fi

ui_print " "
ui_print " - App Option -"
ui_print "   Do you want OnePlus apps (Camera, Gallery and Weather?"
ui_print "   Vol Up = Yes, Vol Down = No"
if $VKSEL; then
  ui_print " "
  ui_print "   Enabling OnePlus apps..."
else
  ui_print " "
  ui_print "   Disabling OnePlus apps..."
  rm -rf $INSTALLER/system/priv-app/
fi