nnoremap <silent><Space>bb :<C-u>Denite buffer -split=floating file:new<CR>
nnoremap <silent><Space>ff :<C-u>Denite file -split=floating file:new<CR>

let s:denite_default_options = {
  \ 'start_filter': v:true,
  \}

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  " 【o】 ファイルを開く
  nnoremap <silent><buffer><expr> o
  \ denite#do_map('do_action')
  " 【s】 ウィンドウを水平分割してファイルを開く
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'split')
  " 【v】 ウィンドウを垂直分割してファイルを開く
  nnoremap <silent><buffer><expr> v
  \ denite#do_map('do_action', 'vsplit')
  " 【d】 ファイルを削除する
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  " 【p】 ファイルをプレビュー画面で開く
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  " 【ESC】 / 【q】 denite.nvimを終了する
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  " 【i】 ファイル名で検索する
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  " 【SPACE】 ファイルを複数選択する
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
