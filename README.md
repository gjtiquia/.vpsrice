# vpsrice

## assumptions

- OS: Ubuntu/Debian
- Installed: `unzip`

## usage

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

my muscle memory has become accustomed to several aliases on my own personal machine when using my customized terminal

however, when i need to `ssh` into an un-configured VPS, i am unable to use these aliases

if i "own" the VPS, sure i can edit the `.bashrc` and install whatever i want

but if i dont "own" the VPS, or if i just want a quick setup, or if its someone else's machine, i want a way to easily get going

ideally, its as easy as
- `git clone` a repo (which should be a public repo, no need to setup ssh keys)
- `install` command (installs the binaries)
- `activate` command (enable aliases for the current shell session)


