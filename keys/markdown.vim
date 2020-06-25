"MARKDOWN
	autocmd Filetype markdown,rmd,mail map <F9> yiWi[<esc>Ea](<esc>pa)
        "autocmd Filetype markdown map <F5> :!pdflatex %<enter><enter>
	"autocmd Filetype markdown map <F6> :!pandoc<space><C-r>%<space>-t<space>beamer<space>-o<space><C-r>%.pdf<Enter><Enter>
	"autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>--pdf-engine=xelatex<space>-o<space><C-r>%.pdf<Enter><Enter>
	"autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
        "autocmd Filetype markdown map <F6> :!zathura $(echo % \| sed 's/md$/md.pdf/') & disown<CR><CR>

        autocmd Filetype markdown,rmd,mail inoremap ;n ---<Enter><Enter>
	autocmd Filetype markdown,rmd,mail inoremap ;b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd,mail inoremap ;s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd,mail inoremap ;e **<++><Esc>F*i
	autocmd Filetype markdown,rmd,mail inoremap ;h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd,mail inoremap ;i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd,mail inoremap ;a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd,mail inoremap ;1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd,mail inoremap ;2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd,mail inoremap ;3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd,mail inoremap ;l --------<Enter>
	autocmd Filetype rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
        autocmd Filetype rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO
