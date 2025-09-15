{ config, pkgs, lib, inputs, nix-minecraft, ... }:

{

  nixpkgs.overlays = [ nix-minecraft.overlay ];
  
  services.minecraft-servers = {
    enable = true;
    eula = true;

    servers = { 
      water-server = {
        package = pkgs.fabricServers.fabric-1_21_1;
        enable = true;
      };
    };
  };

}
