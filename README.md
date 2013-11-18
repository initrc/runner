Runner
======

# Intro
[Runner](https://github.com/initrc/runner) is a vim plugin that runs your code and outputs to the status bar.

It compiles/interprets single files. The supported languages are:

* Java
* C
* C++
* Python
* Ruby

One key to run them all!

# Install
[Vundle](https://github.com/gmarik/vundle) is the recommended plugin manager.

Add `Bundle 'initrc/runner'` to `~/.vimrc` and run `:BundleInstall`.

# Usage
Map the keyboard shortcut.

```
nnoremap <silent> <leader>r :RunnerRun<CR>
```
