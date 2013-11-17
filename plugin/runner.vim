if exists("g:loaded_runner")
  finish
endif
let g:loaded_runner = 1

function! Init()
  set listchars=tab:>-,trail:.
  set list
endfunction

function! Run()
  let file = @%
  if &filetype == "java"
    echo system("javac " . file . " && java " . strpart(file, 0, strlen(file) - 5))
  elseif &filetype == "c"
    echo system("gcc " . file . " && ./a.out")
  elseif &filetype == "cpp"
    echo system("g++ " . file . " && ./a.out")
  elseif &filetype == "python"
    echo system("python " . file)
  elseif &filetype == "ruby"
    echo system("ruby " . file)
  endif
endfunction

call Init()
command! -nargs=0 RunnerRun :call Run()
