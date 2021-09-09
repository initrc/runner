if exists("g:loaded_runner")
  finish
endif
let g:loaded_runner = 1

au BufNewFile,BufRead *.kt setfiletype kotlin
au BufNewFile,BufRead *.kts setfiletype kotlin

function! Run()
  write
  let file = @%
  let output = "runner_output"
  if &filetype == "java"
    let classname = fnamemodify(file, ':t:r')
    call system("mkdir " . output)
    echo system("javac -d " . output . " " . file . " && java -cp " . output . " " . classname)
    call system("rm -rf " . output)
  elseif &filetype == "kotlin"
    echo system("kotlinc " . file . " -include-runtime -d k.jar && java -jar k.jar")
    call system("rm k.jar")
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
  elseif &filetype == "javascript"
    echo system("node " . file)
  endif
endfunction

command! -nargs=0 RunnerRun :call Run()
