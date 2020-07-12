let s:cpo_save = &cpo
set cpo&vim

function! arm#ft#FTarm()
  let head = ' '.getline(1).' '.getline(2).' '.getline(3).' '.getline(4).
	\' '.getline(5).' '
  " Can't use setf, as we need to overrule the default filetype setting
  if matchstr(head, '\s\.arch\s\+armv4') != ''
    set filetype=armv4
  elseif matchstr(head, '\s\.arch\s\+armv5') != ''
    set filetype=armv5
  elseif matchstr(head, '\s\.arch\s\+arm') != ''
    set filetype=arm
  elseif matchstr(head, '\s\.cpu\s\+arm') != ''
    set filetype=arm
  endif
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save
