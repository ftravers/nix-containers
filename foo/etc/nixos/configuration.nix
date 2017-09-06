{

  { config, pkgs, ...};

#  networking = {
#    hostName = "foo"; # Define your hostname.
#    interfaces.eth0.ip4 = [ { address = "192.168.1.201"; prefixLength = 24; } ];
#    defaultGateway = "192.168.1.254";
#    nameservers = [ "8.8.8.8" ];
#    };


  privateNetwork = true;
  hostAddress = "192.168.1.200";
  localAddress = "192.168.1.201";


  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };


  # Set your time zone.
  time.timeZone = "America/Vancouver";


  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget vim emacs git mkpasswd zsh autoconf gnumake dhcpcd
    ];


  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.fenton = {
    isNormalUser = true;
    uid = 1000;
    hashedPassword = "$6$/pK0lFCWLEBBWMJ$S9vMo8Qd2YL1jRuw4S8O7xdB/S4bBaPUVgWQOCkfUK19fJAD2cVGwRKG3017YnbjzFbMkVG5Xe3RuNhWY6zZY/";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAG5wvPKRrqqiOBKZ5dUqF5oK7vd1zNuVsrrAAQCcEkVC2SBXVy5yiCiO7xPz7Wk6oSl+5nvkitYQ4HVuNO+mroUcmbge/e344sfyOytrV2BqFTuijlc+BkBTMk55piHKBgl50l4gIdtTdKk1b0iiTxc5gdhlUr4LUF+mPc5NnuKgMEJLApoFeNKrzbR+Z5ZsLypeFNxzkaAw8mjqRoDoi1lab7tDN/KrVKZ46AYXm9Tix64MdxXI6T+p6Z+2rAQQ0ieexVtVUJBiifaKrvqgr57v8WPFk8VIYb9MbtlxtHdHz/regzZA4L6K+46QpSFeBX29esx1/tuihv/hU8ndf fenton@ss9" ];
  };
  users.extraUsers.cannon = {
    isNormalUser = true;
    uid = 1001;
    hashedPassword = "$6$cw/s2UHRcZa.c./$FIGNWSJAnayIDikIlOOoTY1PpNAtdwrnQmfpcPVHmJQTQ8by0g3obdXC2J8RFiNS/e7qUsmbE7.RuUvrT03nH0";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEArzuCT4K9ojG5hNG2Y/qEOzFIzubeUdvZQP/kYlYL6HsXlX3CwKYQ9s2TvAis+q0y2gf8wnoop0wwYXpxcnE8mkK02wZG/pNiaY6pQsLAsY2999HwRdAV/RGrI5b+tzCw5VyeAswIQtsWIrRkUAQZ2vgbjyU1k/PqT2nM3nbWbLydWP4q4HPG6WQBJ1gB6NuiE8fBWfncmAb4k1hucsd6duPuiyU8llKlSza9/WxcOxPuYS+NicwG6o3SjgjTYQEmDb0vyVX4xKSRNU8m9TiqGHgxvQDZ6akduJQtwZFOGPpAO4ALklUQL+hRhvCQwQw74cRrpvab+I0n5EfIcXA72w== rsa-key-20170901" ];
  };
  
  users.extraUsers.root = {
    openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAG5wvPKRrqqiOBKZ5dUqF5oK7vd1zNuVsrrAAQCcEkVC2SBXVy5yiCiO7xPz7Wk6oSl+5nvkitYQ4HVuNO+mroUcmbge/e344sfyOytrV2BqFTuijlc+BkBTMk55piHKBgl50l4gIdtTdKk1b0iiTxc5gdhlUr4LUF+mPc5NnuKgMEJLApoFeNKrzbR+Z5ZsLypeFNxzkaAw8mjqRoDoi1lab7tDN/KrVKZ46AYXm9Tix64MdxXI6T+p6Z+2rAQQ0ieexVtVUJBiifaKrvqgr57v8WPFk8VIYb9MbtlxtHdHz/regzZA4L6K+46QpSFeBX29esx1/tuihv/hU8ndf fenton@ss9" ];
  };

  users.mutableUsers = false;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "17.03";

}