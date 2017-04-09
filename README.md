# Hobo
My dotfiles and utility programs.

Designed to allow me to easily switch between machines without seeing

`zsh: command not found`


# Initial setup
`git clone git@github.com:looneym/hobo.git`
`cd hobo`
`cp zshrc ~/.zshrc`
`touch ~/.transient`
`source ~/.zshrc`

At this point you have access to the built-in aliases for managing these files. 

# Usage
These assume you have this repo in `~/hobo`

When you want to set up a new machine, run `zimp` to replace the `.zshrc` file in your home dir with the one in this repo.

When you want to backup your config, run `zexp` to copy your working config to this repo. Commmit and push your changes.

The `vimp` and `vexp` commands work in the same way for vim. 

# The transient file

For anything you need to add to your profile that you do not want to check in to source control, use this file. Use this to seperate work and personal configs as well as to store secrets. 
