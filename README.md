# vpsrice

a smaller and self contained subset of my [dotfiles](https://gjt.io/dotfiles) for use in VPS (or other amd64 Ubuntu/Debian machines)

includes
- [vimrc](https://github.com/gjtiquia/.vim)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [yazi](https://yazi-rs.github.io/)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

## assumptions

- OS: Ubuntu/Debian
- Installed: `curl`, `git`, `tar`, `unzip`

## installation

```bash
# clone repo into ~/.vpsrice
cd ~
git clone https://github.com/gjtiquia/.vpsrice.git

# install binaries
cd .vpsrice
chmod a+x install.sh
./install.sh

# activate aliases
source bashrc
```

## usage

```bash
# in any new shell session
source ~/.vpsrice/bashrc
```

## rationale

my muscle memory has become accustomed to several aliases on my own personal machine when using my customized terminal

however, when i need to `ssh` into an un-configured VPS, i am unable to use these aliases and tools, which is mildly annoying, and a drop in efficiency

if i "own" the VPS, sure i can edit the `.bashrc` and install whatever i want

but if i dont "own" the VPS, or if i just want a quick setup, or if its someone else's machine, i want a way to easily get going

the aliases should be restricted to that shell session, such that it will be gone in new shell sessions

the binaries and everything should also be self-contained, such that a simple `rm -rf` can delete everything

it should also not use any package managers, relying on only the most basic of commands like `curl` and `git`

`sudo` should also not be required to install any of the binaries
