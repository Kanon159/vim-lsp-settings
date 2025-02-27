augroup vim_lsp_settings_typescript_language_server
  au!
  LspRegisterServer {
      \ 'name': 'typescript-language-server-docker',
      \ 'cmd': {server_info->lsp_settings#get('typescript-language-server-docker', 'cmd', [lsp_settings#exec_path('typescript-language-server-docker')]+lsp_settings#get('typescript-language-server-docker', 'args', ['--stdio']))},
      \ 'root_uri':{server_info->lsp_settings#get('typescript-language-server-docker', 'root_uri', lsp_settings#root_uri('typescript-language-server-docker'))},
      \ 'initialization_options': lsp_settings#get('typescript-language-server-docker', 'initialization_options', {'diagnostics': 'true'}),
      \ 'allowlist': lsp_settings#get('typescript-language-server-docker', 'allowlist', ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'typescript.tsx']),
      \ 'blocklist': lsp_settings#get('typescript-language-server-docker', 'blocklist', {c->empty(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'node_modules/')) ? ['typescript', 'javascript', 'typescriptreact', 'javascriptreact'] : []}),
      \ 'config': lsp_settings#get('typescript-language-server-docker', 'config', lsp_settings#server_config('typescript-language-server-docker')),
      \ 'workspace_config': lsp_settings#get('typescript-language-server-docker', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('typescript-language-server-docker', 'semantic_highlight', {}),
      \ }
augroup END
