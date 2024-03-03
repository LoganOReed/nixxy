# just is a command runner, Justfile is very similar to Makefile, but simpler.

############################################################################
#
#  Nix commands related to the local machine
#
############################################################################

# deploy and switch
deploy:
  sudo nixos-rebuild switch --flake .

# verbose deploy
debug:
  nixos-rebuild switch --flake . --show-trace --verbose

# update flakes
up:
  nix flake update

# Update specific input
# usage: make upp i=home-manager
upp:
  nix flake lock --update-input $(i)

# display history
history:
  nix profile history --profile /nix/var/nix/profiles/system

# start repl
repl:
  nix repl -f flake:nixpkgs

# remove all generations older than 7 days
clean:
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

# garbage collect all unused nix store entries
gc:
  sudo nix-collect-garbage --delete-old
