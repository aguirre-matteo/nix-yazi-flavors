![Logo](./logo.png)

# Nix Yazi Flavors
This repository is a collection of Yazi flavors packaged
with Nix for being used along NixOS and Home-Manager.

# Table of Contents
- [Usage](#usage)
    - [Installation](#installation)
    - [Configuration](#configuration)
- [Flavors](#flavors)
- [Contributing](#contributing)
- [Licence](#licence)

# Usage

## Installation
The first step is to add this repository to our flake's inputs, which
contains your Home-Manager or NixOS configuration:

```flake.nix
{
  inputs = {
    nix-yazi-flavors.url = "github:aguirre-matteo/nix-yazi-flavors";
  };
}
```

Then we have to add this flake's overlay to our config. In most cases
we would want to add it directly to our NixOS configuration. Make sure
you made your flake's inputs available through `specialArgs` or 
`extraSpecialArgs`.

```flake.nix
# configuration.nix
{ inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.nix-yazi-flavors.overlays.default
  ];
}
```

And in case we're using Home-Manager standalone or we don't want to 
apply it globally, we can enable it the same way, but placing the code 
in our `home.nix`.

## Configuration
Now it's time to add the flavors to our Yazi's config. We can
either add all the flavors by doing:

```nix
# home.nix
{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    flavors = pkgs.yaziFlavors;
  };
}
```

Or add only the ones we want by inheriting those packages under
`programs.yazi.flavors`:

```nix
{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    flavors = {
      inherit (pkgs.yaziFlavors)
      vscode-dark-plus vscode-light-plus;
    };
  };
}
```

Then we must set the `programs.yazi.theme.flavor` option so Yazi
knows which of those flavors should be used. We can set which one
to use for dark or light themes:

```nix

{
  programs.yazi = {
    enable = true;
    flavors = {
      inherit (pkgs.yaziFlavors)
      vscode-dark-plus vscode-light-plus;
    };

    theme.flavor = {
      dark = "vscode-dark-plus";
      light = "vscode-light-plus";
    };
  };
}
```

# Flavors
Here you can browse all the flavors available in this repository.

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-frappe.yazi">catppuccin-frappe.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.catppuccin-frappe
```

<img src="https://github.com/yazi-rs/flavors/blob/main/catppuccin-frappe.yazi/preview.png" alt="Catppuccin Frappe">
</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-latte.yazi">catppuccin-latte.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.catppuccin-latte
```

<img src="https://github.com/yazi-rs/flavors/blob/main/catppuccin-latte.yazi/preview.png" alt="Catppuccin Latte">
</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-macchaito.yazi">catppuccin-macchiato.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.catppuccin-macchaito
```

<img src="https://github.com/yazi-rs/flavors/blob/main/catppuccin-macchiato.yazi/preview.png" alt="Catppuccin Macchiato">
</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-mocha.yazi">catppuccin-mocha.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.catppuccin-mocha
```

<img src="https://github.com/yazi-rs/flavors/blob/main/catppuccin-mocha.yazi/preview.png" alt="Catppuccin Mocha">
</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/dracula.yazi">dracula.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.dracula
```

<img src="https://github.com/yazi-rs/flavors/blob/main/dracula.yazi/preview.png" alt="Dracula">
</details>

<details>
<summary>
<a href="https://github.com/dangooddd/kanagawa.yazi">kanagawa.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.kanagawa
```

<img src="https://github.com/dangooddd/kanagawa.yazi/blob/main/preview.png" alt="Kanagawa">
</details>

<details>
<summary>
<a href="https://github.com/marcosvnmelo/kanagawa-dragon.yazi">kanagawa-dragon.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.kanagawa-dragon
```

<img src="https://github.com/marcosvnmelo/kanagawa-dragon.yazi/blob/main/preview.png" alt="Kanagawa Dragon">
</details>

<details>
<summary>
<a href="https://github.com/AdithyanA2005/nord.yazi">nord.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.nord
```

<img src="https://github.com/AdithyanA2005/nord.yazi/blob/main/preview.png" alt="Nord">
</details>

<details>
<summary>
<a href="https://github.com/BennyOe/onedark.yazi">onedark.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.onedark
```

<img src="https://github.com/BennyOe/onedark.yazi/blob/main/preview.png" alt="OneDark">
</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-day.yazi">tokyonight-day.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.tokyonight-day
```

<img src="https://github.com/kalidyasin/yazi-flavors/blob/main/tokyonight-day.yazi/preview.png" alt="TokyoNight Day">
</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-moon.yazi">tokyonight-moon.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.tokyonight-moon
```

<img src="https://github.com/kalidyasin/yazi-flavors/blob/main/tokyonight-moon.yazi/preview.png" alt="TokyoNight Moon">
</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-night.yazi">tokyonight-night.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.tokyonight-night
```

<img src="https://github.com/kalidyasin/yazi-flavors/blob/main/tokyonight-night.yazi/preview.png" alt="TokyoNight Night">
</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-storm.yazi">tokyonight-storm.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.tokyonight-storm
```

<img src="https://github.com/kalidyasin/yazi-flavors/blob/main/tokyonight-storm.yazi/preview.png" alt="TokyoNight Storm">
</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode-dark-modern.yazi">vscode-dark-modern.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.vscode-dark-modern
```

<img src="https://github.com/956MB/vscode-dark-modern.yazi/blob/main/preview.png" alt="VSCode Dark Modern">
</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode-dark-plus.yazi/">vscode-dark-plus.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.vscode-dark-plus
```

<img src="https://github.com/956MB/vscode-dark-plus.yazi/blob/main/preview.png" alt="VSCode Dark Plus">
</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode-light-modern.yazi">vscode-light-modern.yazi</a>
</summary>

```nix
pkgs.yaziFlavors.vscode-light-modern
```

<img src="https://github.com/956MB/vscode-light-modern.yazi/blob/main/preview.png" alt="VSCode Light Modern">
</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode-light-plus.yazi">vscode-light-plus.yazi</a>
</summary>

```nix
pkgs.vscode-light-plus
```

<img src="https://github.com/956MB/vscode-light-plus.yazi/blob/main/preview.png" alt="VSCode Light Plus">
</details>

# Contributing
If you want to contribute to this project, there are some things you can do:

- Add a new flavor (must also add a section in [Flavors](#flavors)).
- Maintain or update an existing flavor.
- Spread this project in forums or recommend it to someone else.

# Licence
All the code in this repository is distributed under the MIT Licence. You can see the details [here](./LICENSE).
