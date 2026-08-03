Runner
======

# Intro
[Runner](https://github.com/initrc/runner) is a vim plugin that runs your code and outputs to the status bar.

It compiles/interprets single files. The supported languages are:

* C
* C++
* Java
* JavaScript
* Kotlin
* Python
* Ruby

One key to run them all!

# Install

## Neovim with lazy.nvim

Runner is written in Vimscript but it also works with Neovim.

Add the following plugin specification to your existing lazy.nvim plugin list:

```lua
{ "initrc/runner" },
```

Restart Neovim and run `:Lazy sync`.

## Vim

[Vundle](https://github.com/gmarik/vundle) is the recommended plugin manager.

Add `Bundle 'initrc/runner'` to `~/.vimrc` and run `:BundleInstall`.

# Usage

The default keyboard shortcut is `<leader>r`.

To remap the shortcut, in Neovim add the following snippet to where Runner is registered.

```lua
keys = { { "<leader>r", "<cmd>RunnerRun<CR>", desc = "Run current file", },
```

In Vim run:
```
nnoremap <silent> <leader>r :RunnerRun<CR>
```

