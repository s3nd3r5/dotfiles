Dotfiles
========

Contained are all of the dotfiles I use. These should be setup in a way that they're safe to use across my distributions.

If necessary patches need be applied guard against them.

Ex:

```
if [ -f $HOME/.work_pc_bash_profile ]; then
   source $HOME/.work_pc_bash_profile
fi
```

This way on machines where this is not present its not loaded.

Do not include anything that it pushed too by other applications.

If manual updates need to happen for a program to function properly (SublimeText) Add their contents to:

[MANUALSETUP.md](MANUALSETUP.md)




