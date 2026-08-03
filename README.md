# Runner

[Runner](https://github.com/initrc/runner) is a vim plugin that runs your code and shows the output in the status bar.

It compiles/interprets single files. The supported languages are:

* C
* C++
* Java
* JavaScript
* Kotlin
* Python
* Ruby

# Installation

## Neovim (vim.pack)

Runner is written in Vimscript but it also works with Neovim.

```lua
vim.pack.add { 'https://github.com/initrc/runner' }
vim.keymap.set("n", "<leader>rc", "<cmd>RunnerRun<CR>", { desc = "[R]un [C]ode" })
```

## Vim (Vundle)

Add `Bundle 'initrc/runner'` to `~/.vimrc` and run `:BundleInstall`.

To map the keyboard shortcut run `nnoremap <silent> <leader>r :RunnerRun<CR>`.
