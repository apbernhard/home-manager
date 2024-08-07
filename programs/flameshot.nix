{ ... }:

{
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
        showStartupLaunchMessage = true;
        checkForUpdates=false;
        contrastOpacity=188;
        drawColor="#ee82ee";
        savePath="/home/dertrudi/Downloads";
        showHelp=false;
      };
    };
  };
}
  