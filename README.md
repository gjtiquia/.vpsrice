# vpsrice

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

however, when i need to `ssh` into an un-configured VPS, i am unable to use these aliases and tools

if i "own" the VPS, sure i can edit the `.bashrc` and install whatever i want

but if i dont "own" the VPS, or if i just want a quick setup, or if its someone else's machine, i want a way to easily get going

the aliases should also be restricted to that shell session, such that it will be gone in new shell sessions

the binaries and everything should also be self-contained, such that a simple `rm -rf` can delete everything

so it should not use any package managers, rely on only the most basic of commands

`sudo` should also not be required to install
