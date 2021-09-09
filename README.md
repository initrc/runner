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
[Vundle](https://github.com/gmarik/vundle) is the recommended plugin manager.

Add `Bundle 'initrc/runner'` to `~/.vimrc` and run `:BundleInstall`.

# Usage
Map the keyboard shortcut.

```
nnoremap <silent> <leader>r :RunnerRun<CR>
```

# Changelog
## 0.3.0
1. Add support for Kotlin

## 0.2.0
1. Add support for JavaScript that runs on Node.js
2. `<leader>r` saves the code before running it

## 0.1.0
1. Add support for Java, C, C++, Python and Ruby
2. `<leader>r` to run the code
