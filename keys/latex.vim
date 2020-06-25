" Latex
"
    "autocmd Filetype tex map <F5> :!pdflatex %<enter><enter>
    "autocmd Filetype tex map <F6> :!zathura $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>

    " Compile document, be it groff/LaTeX/markdown/etc.
	map <F5> :w! \| !compiler <c-r>%<CR><CR>
   
    " Open corresponding .pdf/.html or preview
	map <F6> :!opout <c-r>%<CR><CR>
    map <F7> :Files /home/wolverine/Dropbox/PressReports/barcode<CR>

    " Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

    " Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
    autocmd BufRead,BufNewFile *.tex set filetype=tex
   
    inoremap <Space><Space> <ESC>/<++><Enter>"_c4l
    inoremap ;<Space> <ESC>14l/<++><Enter>"_c4l
    inoremap ;; <ESC>0kk/<++><Enter>"_c4l
    
    "autocmd Filetype plaintex map <F12> :r /home/logan/Dropbox/shell_programs/template.tex<enter>:w<enter>:e<enter> 
    
    autocmd Filetype tex inoremap ;r \RollInfo{}{<++>}{<++>}{<++>}<Esc><S-a><CR><CR><++><Esc>2k$4F{li
    autocmd Filetype tex inoremap ;rc \RollInfo{}{<++>}{<++>}{<++>}<Esc><S-a><CR><CR><++><Esc>2ji\columnbreak<CR><CR><++><Esc><Esc>6k$4F{li
    
    autocmd Filetype tex inoremap ;b B8C8M242  
    autocmd Filetype tex inoremap ;n NS19E1408  
    
    "autocmd Filetype tex inoremap ;r \RollInfo{}{<++>}{<++>}{<++>}<Esc>4F{li
    "autocmd Filetype tex inoremap ;n \NoNumberInfo{}{<++>}{<++>}<Esc>3F{li
    
    " date functions
    autocmd Filetype tex inoremap ;d <C-R>=strftime("%A, %B %d")<CR>
    autocmd Filetype tex inoremap ;dtu <++><ESC>:r !date -dtuesday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi
    autocmd Filetype tex inoremap ;dwe <++><ESC>:r !date -dwednesday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi
    autocmd Filetype tex inoremap ;dth <++><ESC>:r !date -dthursday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi
    autocmd Filetype tex inoremap ;dfr <++><ESC>:r !date -dfriday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi
    autocmd Filetype tex inoremap ;dsa <++><ESC>:r !date -dsaturday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi
    autocmd Filetype tex inoremap ;dsu <++><ESC>:r !date -dsunday +'\%D'<CR>A<ESC>v0xkk/<++><Enter>"_"-Pl4xjdd/<++><Enter>4xi

    autocmd Filetype tex inoremap ;dc Daily Corinthian - 
    autocmd Filetype tex inoremap ;bi Banner - 
    autocmd Filetype tex inoremap ;rb Red Bay - 
    autocmd Filetype tex inoremap ;tc Tishomingo Co. - 
    autocmd Filetype tex inoremap ;lc Lee County - 
    autocmd Filetype tex inoremap ;bb Bolivar Bulletin - 
    autocmd Filetype tex inoremap ;bn Baldwyn - 
    autocmd Filetype tex inoremap ;en Evening Times - 
    autocmd Filetype tex inoremap ;gn Germantown News - 
    autocmd Filetype tex inoremap ;cw Crossroads - 
    autocmd Filetype tex inoremap ;gg Gardners - 
    autocmd Filetype tex inoremap ;ss Silver Star News - 
   
    autocmd Filetype tex inoremap ;as A-Section
    autocmd Filetype tex inoremap ;bs B-Section
    autocmd Filetype tex inoremap ;cs C-Section
    autocmd Filetype tex inoremap ;ds D-Section
    autocmd Filetype tex inoremap ;tv TV Guide
    autocmd Filetype tex inoremap ;dcc Daily Corinthian - Comics
    autocmd Filetype tex inoremap ;scc Searcy - Comics
    autocmd Filetype tex inoremap ;pcc Paragould - Comics
    autocmd Filetype tex inoremap ;jcc Jonesboro - Comics
   
    autocmd Filetype tex inoremap ;pr \PressNotes{}<Esc><S-a><CR><CR><++><Esc>2kf{li

    
    " autocmd Filetype tex inoremap <expr> ;x fzf#vim#complete("getFiles")
    "
    "
"function! s:make_sentence(lines)
"return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
"endfunction



