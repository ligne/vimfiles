" SystemTap scripts
au BufNewFile,BufRead *.stp setf stap

"au FileType * setf tw=0

au BufRead,BufNewFile */nagios*/*.cfg set filetype=nagios
au BufRead,BufNewFile decimate.cfg    set filetype=python
au BufRead,BufNewFile *.tt2,*.html    set filetype=tt2html ts=2 expandtab
au BufRead,BufNewFile dhcpd.conf      set filetype=dhcpd

