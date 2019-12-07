## Dotfiles

> Everything should be made as simple as possible, but not simpler
-- Albert Einstein

## Installation

Either clone or download the repo and run the setup.sh script:

```bash
cd $HOME
git clone https://github.com/netsensei/dotfiles.git .dotfiles
cd .dotfiles
./setup.sh
```
... or run it through curl/bash. **Beware: only do this if you know what you're doing!**

```bash
curl -k -L https://raw.githubusercontent.com/netsensei/dotfiles/master/setup.sh | bash
```

The setup script will make a backup of existing dotfiles, and create symlinks to the packaged dotfiles.

## MacOS vs Linux

Most dotfiles projects are geared towards Mac OSX. A big tiny difference is how
OSX tends to handle the execution of `.bash_profile` and `.bashrc` files compared to 
other UNIX variants such as Fedora, Debian, Ubuntu and others.

In a nutshell: OSX will call `.bash_profile` instead of `.bashrc` when you open a new terminal window. Everyone else will read `.bashrc` when you open an `xterm`. `.bash_profile` is read when you open up a new shell through `ssh` or from the text console.

John Staiger wrote a nice short blogpost called [.bash_profile vs .bashrc](http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html) that explains why.

So, if you want to use these dotfiles, start with `.bashrc`.

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
