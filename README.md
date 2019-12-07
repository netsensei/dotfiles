## Dotfiles

> Everything should be made as simple as possible, but not simpler
-- Albert Einstein

## Installation

Either clone or download the repo and run the setup.sh script:

```bash
cd
git clone https://github.com/netsensei/dotfiles.git .dotfiles
cd .dotfiles
./setup.sh
```
... or run it through curl/bash if you're wild:

```bash
curl -k -L https://raw.githubusercontent.com/netsensei/dotfiles/master/setup.sh | bash
```

The setup script will make a backup of existing dotfiles, and create symlinks to the packaged dotfiles.

## Inspiration

This configuration works for me, but they might not be suited for you. Dotfiles 
are personal settings. So, don't blindly copy this repository and run with it.
Instead, fork this repository, or create your own dotfiles, and use this as a source
for inspiration.

I drew inspiration from different sources to create my own dotfiles:

* [Matthias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Simon Owen's dotfiles](https://github.com/s10wen/dotfiles)
* [Dotfiles on Github](https://dotfiles.github.io/)
* [Awesome dotfiles](https://github.com/webpro/awesome-dotfiles)

## License

The MIT License (MIT). Please see [Licensei](LICENSE.md) File for more information.
