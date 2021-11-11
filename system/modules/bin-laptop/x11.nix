{ config, pkgs, ... }: {

  services = {
      # enable x11 windowing system.
    xserver = {
      enable = true;
      layout = "us";
      libinput = {
        enable = true;
        touchpad = {
          naturalScrolling = false;
          middleEmulation = true;
          tapping = true;
        };
      };
      videoDrivers = [ "intel" ];
      displayManager.startx.enable = true;
      desktopManager.session = [{
        name = "dwm";
        start = ''
          /run/current-system/sw/bin/dwm &
          waitPID=$!
        '';
      }];
    };
   };

}