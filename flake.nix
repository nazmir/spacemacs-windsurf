{
  description = "Windsurf spacemacs theme";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShells.aarch64-darwin.default = let
      pkgs = import nixpkgs { system = "aarch64-darwin"; };  # change if Intel Mac
    in pkgs.mkShell {
      packages = [
        pkgs.nodejs_24
        pkgs.yarn
        pkgs.vsce
      ];
    };
  };
}
