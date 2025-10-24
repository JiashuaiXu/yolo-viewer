{
  description = "React development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Node.js and pnpm
            nodejs
            nodePackages.pnpm
            nodePackages.yarn
            
            # Additional tools that might be useful
            nodePackages.typescript
            nodePackages.eslint
            nodePackages.prettier
            
            # For displaying environment info
            cowsay
          ];

          # Set environment variables if needed
          NODE_ENV = "development";
          
          # Shell initialization commands
          shellHook = ''
            echo "React development environment is ready!"
            echo "Use 'nix develop' to enter this environment"
            echo "Commands available: node, pnpm, yarn"
            cowsay -f tux "Welcome to React development with pnpm and Nix! Node.js $(node --version | tr -d v)"
          '';
        };
      });
}