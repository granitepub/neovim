

function! CalculateWaste()
    normal 3k02f{lyiw3j02f{
    let l:arg1 = @"

    normal 4k02f{lyiw4j02f{l
    let l:arg2 = @"

    let @" = l:arg1 - l:arg2
    normal P
endfunction


function! CalculateUsage()
    normal mm
    normal 0f{lyi{
    let l:arg1= @"
    let arg1 = str2float(arg1)

    normal 02f{lyi{
    let l:arg2 = @"
    let arg2 = str2float(arg2)

    let l:arg3 = arg1 - arg2
    let @" = string(arg3)

    normal `m2h  
    normal P
endfunction

function! TestFunc()
    let l:a = 30.5
    let l:b = 12.0
    let l:c = a-b
    let @" = string(c)
    normal P
    
endfunction

function! PasteRollInfo()
    normal P2f{
endfunction


autocmd Filetype tex inoremap ;p <esc> :call PasteRollInfo()<cr> i
autocmd Filetype tex nnoremap ;t :call TestFunc()<cr>
autocmd Filetype tex inoremap ;u <esc> :call CalculateWaste()<cr> i
autocmd Filetype tex inoremap ;w <esc> :call CalculateUsage()<cr> i


function! s:make_sentence(lines)
    let words=split(a:lines[0])
    let value="\\RollInfo{" . words[1] . "}{<++>}{<++>}{" . words[0] . "}" . "\n\n" . "<++>"
    return value 
endfunction

inoremap <expr> ;x fzf#vim#complete({
            \ 'source':  'FindRollInfo',
            \ 'reducer': function('<sid>make_sentence'),
            \ 'options': '--multi --reverse --margin 1%,0',
            \ 'left':    25,})

