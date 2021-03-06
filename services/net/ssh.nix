{ config, pkgs, ... }: {

  services.openssh = {
    enable = true;
    startWhenNeeded = true;
    passwordAuthentication = false;
    allowSFTP = false; # Don't set this if you need sftp
    kbdInteractiveAuthentication = false;
    # nixos 22.05
#    kbdInteractiveAuthentication = false;
    forwardX11 = false;
    extraConfig = ''
      AllowTcpForwarding yes
      AllowAgentForwarding no
      AllowStreamLocalForwarding no
      AuthenticationMethods publickey
    '';
  };

}
