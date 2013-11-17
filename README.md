Runner
======

# Intro
Runner is vim plugin that runs your code and outputs in the status bar.

It compiles/interprets single files. The supported languages are:

* Java
* C
* C++
* Python
* Ruby

# Install
[Vundle](https://github.com/gmarik/vundle) is the recommended plugin manager.

Add `Bundle 'initrc/runner'` to `~/.vimrc` and run `:BundleInstall`.

# Usage
Map the keyboard shortcut in `~/.vimrc`

```
nnoremap <silent> <leader>r :RunnerRun<CR>
```
