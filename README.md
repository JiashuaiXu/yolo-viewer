# YOLO Viewer React Application

This project sets up a React development environment using Nix for reproducible builds and development.

## Prerequisites

- [Nix](https://nixos.org/download.html) package manager installed
- Optional: [direnv](https://direnv.net/) for automatic environment activation

## Getting Started

### With direnv (recommended)

If you have direnv installed, simply navigate to this directory:

```bash
cd yolo-viewer
```

The development environment will be automatically activated with cowsay welcome message.

### Without direnv

Enter the development environment manually:

```bash
cd yolo-viewer
nix develop
```

### Installing Dependencies

Once in the development environment, install the project dependencies:

```bash
pnpm install
```

### Running the Development Server

To start the React development server:

```bash
pnpm start
```

The application will be available at http://localhost:3000

### Building for Production

To create a production build:

```bash
pnpm run build
```

The build artifacts will be stored in the `build/` directory.

## Available Scripts

- `pnpm start` - Start the development server
- `pnpm run build` - Create a production build
- `pnpm test` - Run tests
- `pnpm run eject` - Eject from Create React App (irreversible)

## Dependencies

The development environment includes:

- Node.js
- pnpm
- yarn
- TypeScript
- ESLint
- Prettier
- cowsay (for environment info)

## Project Structure

- `public/index.html` - Main HTML file
- `src/` - Source code directory
- `src/index.js` - Main entry point
- `src/App.js` - Main application component
- `src/App.css` - Main styles
- `src/index.css` - Global styles
- `src/logo.svg` - Application logo

## Nix Environment

The `flake.nix` file defines a reproducible development environment with all necessary tools. The environment includes:
- Node.js and pnpm
- React development tools
- Linters and formatters
- Type checking tools
- cowsay for displaying environment information