{
  description = "My Neovim config using nvf.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    import-tree.url = "github:denful/import-tree";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ inputs.treefmt-nix.flakeModule ];

      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = { pkgs, ... }: {
        packages.default =
          (inputs.nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [ (inputs.import-tree ./config) ];
          }).neovim;

        treefmt = {
          projectRootFile = "flake.nix";

          programs = {
            nixfmt.enable = true;
            stylua.enable = true;
          };
        };
      };
    };
}
