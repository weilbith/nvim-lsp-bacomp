# NeoVim Language Server Backwards Compatibility

This plugin provides the convenience to run LSP related commands with capability
checks to the language server and allow to fall back to alternative "old school"
solutions.

## Installation

Install the plugin with your favorite manager tool. Here is an example using
[dein.vim](https://github.com/Shougo/dein.vim):

```vim
call dein#add('weilbith/nvim-lsp-backomp', {'on_cmd': 'LspBacomp'})
```

It is recommended to use the [nvim-lsp](https://github.com/neovim/nvim-lsp)
plugin to attach language client to your buffers.

## Usage

The following are examples by using the `:LspBacomp` command directly. Checkout
the docs for further functionality and more details. There are a bunch of
functions to simplify your own _Lua_ scripts.

Establish an auto-command to leverage LSP document highlighting if available:

```vim
autocmd! CursorHold * silent! LspBacomp documentHighlightProvider
      \ lua\ vim.lsp.buf.document_highlight()
autocmd CursorMoved * lua vim.lsp.buf.clear_references()
```

Define a mapping to jump to the definition of the word under the cursor. Either
by the language server if possible, else fall back to the tag file.

```vim
nnoremap gd <cmd>LspBacomp definitionProvider lua\ vim.lsp.buf.definition()
      \ execute\ 'tjump\ '.expand('<cword>')<CR>
```

---

**Note:**
Please mind that _NeoVim_ is not fully consistent at the current state. This
means that some methods for language servers are exposed via the `lsp-buf` API,
but are not covered by the server compatibilities. Thereby this plugin can't
check for them. Such are for example the `declarationProvider`. It is planned to
open a PR to add them. The [`lsp_provider_names.lua`
module](./lua/lsp_bacomp/lsp_provider_names.lua) includes a list of all missing
providers according to the official LSP specification.
