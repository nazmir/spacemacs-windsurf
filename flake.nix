{
  description = "Windsurf spacemacs theme";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs }: {
    devShells.aarch64-darwin.default = let
      pkgs = import nixpkgs { system = "aarch64-darwin"; };  # change if Intel Mac
    in pkgs.mkShell {
      packages = [
        pkgs.nodejs_20
        pkgs.npm
        pkgs.vsce
      ];
    };
  };
