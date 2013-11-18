if exists("g:loaded_runner")
  finish
endif
let g:loaded_runner = 1

function! Run()
  let file = @%
  let output = "runner_output"
  if &filetype == "java"
    let classname = fnamemodify(file, ':t:r')
    call system("mkdir " . output)
    echo system("javac -d " . output . " " . file . " && java -cp " . output . " " . classname)
    call system("rm -rf " . output)
  elseif &filetype == "c"
    echo system("gcc " . file . " && ./a.out")
    call system("rm a.out")
  elseif &filetype == "cpp"
    echo system("g++ " . file . " && ./a.out")
    call system("rm a.out")
  elseif &filetype == "python"
    echo system("python " . file)
  elseif &filetype == "ruby"
    echo system("ruby " . file)
  endif
endfunction

command! -nargs=0 RunnerRun :call Run()
