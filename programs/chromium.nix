{ config, pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    extensions = [
      "edibdbjcniadpccecjdfdjjppcpchdlm" # I still don't care about cookies
      "gcbommkclmclpchllfjekcdonpmejbdp" # https everywhere
      "dbepggeogbaibhgnhhndojpepiihcmeb" # vimium
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock origin
      "oboonakemofpalcgghocfoadofidjkkk" # KeepassXC
      "nngceckbapebfimnlniiiahkandclblb" # bitwarden

    ];
  };
}