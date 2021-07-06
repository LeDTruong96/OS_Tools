"Flutter
let g:dart_format_on_save = 1

let g:which_key_map.f = {
      \ 'name' : '+Flutter' ,
      \ 's' : [':CocCommand flutter.run'        , 'flutter.run'],
      \ 'd' : [':CocCommand flutter.devices'    , 'flutter.devices'],
      \ 'u' : [':CocCommand flutter.upgrade'       , 'flutter.upgrades'],
      \ 'c' : [':CocCommand flutter.create'    , 'flutter.create'],
      \ 'a' : [':CocCommand flutter.attach'          , 'flutter.attach'],
      \ 'p' : [':CocCommand flutter.pub.get'           , 'flutter.pub.get'],
      \ 'e' : [':CocCommand flutter.emulators'        , 'flutter.emulators'],
      \ 'g' : [':CocCommand flutter.gotoSuper'        , 'flutter.gotoSuper'],
      \ 'r' : [':CocCommand flutter.lsp.restart'            , 'flutter.lsp.restart'],
      \ 't' : [':CocCommand flutter.doctor'          , 'flutter.doctor'],
      \ }

