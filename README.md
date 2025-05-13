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
> [!NOTE]
> These flavors require Yazi >=0.4.0. Nixpkgs 24.11 has
> version 0.3.3, so make sure you install Yazi from the
> unstable branch.

## Installation
First, add this repository to the inputs of your flake which
contains your Home-Manager or NixOS configuration:


```flake.nix
{
  inputs = {
    # ...
    nix-yazi-flavors.url = "github:aguirre-matteo/nix-yazi-flavors"
  };
}
```

This repository provides a flake with an overlay that make available
all flavors under `pkgs.yazi-flavors.<name>`. Add that overlay to the
Nixpkgs' list of overlays:

```flake.nix
{
  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      # ...
      modules = [
        # ...
        {
          nixpkgs.overlays = {
            inputs.nix-yazi-flavors.overlay # <--- Here you enable the overlay
          };
        }
      ];
    };
  };
}

```
## Configuration
Now, in your Yazi's config, you can enable all the flavors by doing this:

```nix
{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    flavors = pkgs.yazi-flavors;
  };
}
```

Or if you want to add only some of them, you can do so this way:


```nix
{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    flavors = {
      inherit (pkgs.yazi-flavors)
        vscode-dark-plus
        vscode-light-plus
        ;
    };
  };
}
```

Now, to set the `theme.flavor` option to make sure Yazi uses your downloaded flavor:

```nix

{
  programs.yazi = {
    enable = true;
    flavors = {
      inherit (pkgs.yazi-flavors)
        vscode-dark-plus
        vscode-light-plus
        ;
    };

    theme.flavor = {
      dark = "vscode-dark-plus";
      light = "vscode-light-plus";
    };
  };
}
```

# Flavors

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-frappe.yazi">catppuccin-frappe.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.catppuccin-frappe
```

</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-latte.yazi">catppuccin-latte.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.catppuccin-latte
```

</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-macchaito.yazi">catppuccin-macchiato.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.catppuccin-macchaito
```

</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/catppuccin-mocha.yazi">catppuccin-mocha.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.catppuccin-mocha
```

</details>

<details>
<summary>
<a href="https://github.com/yazi-rs/flavors/tree/main/dracula.yazi">dracula.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.dracula
```

</details>

<details>
<summary>
<a href="https://github.com/dangooddd/kanagawa.yazi">kanagawa.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.kanagawa
```

</details>

<details>
<summary>
<a href="https://github.com/AdithyanA2005/nord.yazi">nord.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.nord
```

</details>

<details>
<summary>
<a href="https://github.com/BennyOe/onedark.yazi">onedark.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.onedark
```

</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-day.yazi">tokyonight-day.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.tokyonight-day
```

</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-moon.yazi">tokyonight-moon.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.tokyonight-moon
```

</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-night.yazi">tokyonight-night.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.tokyonight-night
```

</details>

<details>
<summary>
<a href="https://github.com/kalidyasin/yazi-flavors/tree/main/tokyonight-storm.yazi">tokyonight-storm.yazi</a>
</summary>

```nix
pkgs.yazi-flavors.tokyonight-storm
```

</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode.yazi/tree/main/themes/vscode-dark-modern.yazi">vscode-dark-modern.yazi</a>
</summary>

```nix
pkgs.vscode-dark-modern
```

</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode.yazi/tree/main/themes/vscode-dark-plus.yazi">vscode-dark-plus.yazi</a>
</summary>

```nix
pkgs.vscode-dark-plus
```

</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode.yazi/tree/main/themes/vscode-light-modern.yazi">vscode-light-modern.yazi</a>
</summary>

```nix
pkgs.vscode-light-modern
```

</details>

<details>
<summary>
<a href="https://github.com/956MB/vscode.yazi/tree/main/themes/vscode-light-plus.yazi">vscode-light-plus.yazi</a>
</summary>

```nix
pkgs.vscode-light-plus
```

</details>

# Contributing
If you want to contribute to this project, here is a
list of some of the things you can do:

- Add a new flavor (must also add a section in [Flavors](#flavors)).
- Maintain or update an existing flavor.
- Spread this project in forums or recommend it to someone else.

# Licence
All the code in this repository is distributed under the MIT Licence. See the details [here](./LICENSE).
