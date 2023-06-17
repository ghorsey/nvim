# Neovim Configuration

This is my neovim configuration based on [lazyvim.org](https://www.lazyvim.org/) and 
[lazy.vim](https://github.com/folke/lazy.nvim).

## Keymaps

## Leader Key

| Key                            | Description               |
| ------------------------------ | ------------------------- |
| <kbd>&lt;leader&gt;</kbd>      | The leader key is a space: <kbd>&nbsp;</kbd> |
| <kbd>&lt;localleader&gt;</kbd> | The local leader key is a space: <kbd>&nbsp;</kbd>                          |

## General 

| Key/Chord                                                        | Description                                          | Modes      |
| ---------------------------------------------------------- | ---------------------------------------------------- | ---------- |
| <kbd>.</kbd>                                               | Repeat last action                                   | n          |
| <kbd>h</kbd>                                               | Move the cursor left                                 | n          |
| <kbd>j</kbd>                                               | Move the cursor down                                 | n          |
| <kbd>k</kbd>                                               | Move the cursor up                                   | n          |
| <kbd>l</kbd>                                               | Move the cursor right                                | n          |
| <kbd>&lt;C-u&gt;</kbd>                                               | Move the cursor up a screen                                | n          |
| <kbd>&lt;C-d&gt;</kbd>                                               | Move the cursor down a screen                                | n          |
| <kbd>&lt;C-h&gt;</kbd>                                     | Move to the window to the left                       | n, t       |
| <kbd>&lt;C-j&gt;</kbd>                                     | Move to the window below                             | n, t       |
| <kbd>&lt;C-k&gt;</kbd>                                     | Move to the window above                             | n, t       |
| <kbd>&lt;C-l&gt;</kbd>                                     | Move to the window to the right                      | n, t       |
| <kbd>&lt;C-Up&gt;</kbd>                                    | Resize smaller by 2 lines                            | n          |
| <kbd>&lt;C-Down&gt;</kbd>                                  | Resize larger by 2 lines                             | n          |
| <kbd>&lt;C-Left&gt;</kbd>                                  | Resize narrower by 2 lines                           | n          |
| <kbd>&lt;C-Right&gt;</kbd>                                 | Resize wider by 2 lines                              | n          |
| <kbd>&lt;A-j&gt;</kbd>                                     | Move line down                                       | n, i, v    |
| <kbd>&lt;A-k&gt;</kbd>                                     | Move line up                                         | n, i, v    |
| <kbd>&lt;</kbd>                                            | Decrease indent of selected line(s)                  | v          |
| <kbd>&gt;</kbd>                                            | Increase indent of selected line(s)                  | v          |
| <kbd>J</kbd>               | Join lines and keep the cursor position              | n     |
| <kbd>&lt;S-h&gt;</kbd>, <kbd>[b</kbd>                      | Previous buffer                                      | n          |
| <kbd>&lt;S-l&gt;</kbd>, <kbd>]b</kbd>                      | Next buffer                                          | n          |
| <kbd>&lt;leader&gt;bb</kbd>, <kbd>&lt;leader&gt;`</kbd>    | Switch to other buffer                               | n          |
| <kbd>&lt;esc&gt;</kbd>, <kbd>&lt;C-c&gt;</kbd>             | Escape and clear search                              | n, i       |
| <kbd>&lt;leader&gt;ur</kbd>                                | Update Render (Redraw / clear hlsearch/ diff update) | n          |
| <kbd>gw</kbd>, <kbd>*</kbd>                                | Search word under cursor                             | n, x       |
| <kbd>/</kbd>                                               | Start a new search                                   | n, x, o    |
| <kbd>n</kbd>                                               | Next search result                                   | n, x, o    |
| <kbd>N</kbd>                                               | Previous search result                               | n, x, o    |
| <kbd>&lt;C-s&gt;</kbd>                                     | Save file                                            | i, v, n, s |
| <kbd>&lt;leader&gt;l</kbd>                                 | Open Lazy Plugin Manager                             | n          |
| <kbd>&lt;leader&gt;fn</kbd>                                | New File                                             | n          |
| <kbd>&lt;leader&gt;xl</kbd>                                | Location List                                        | n          |
| <kbd>&lt;leader&gt;xq</kbd>                                | Quickfix List                                        | n          |
| <kbd>&lt;leader&gt;uf</kbd>                                | Toggle format on Save                                | n          |
| <kbd>&lt;leader&gt;us</kbd>                                | Toggle Spelling                                      | n          |
| <kbd>&lt;leader&gt;uw</kbd>                                | Toggle Word Wrap                                     | n          |
| <kbd>&lt;leader&gt;ul</kbd>                                | Toggle Line Numbers                                  | n          |
| <kbd>&lt;leader&gt;ud</kbd>                                | Toggle Diagnostics                                   | n          |
| <kbd>&lt;leader&gt;uc</kbd>                                | Toggle Conceal                                       | n          |
| <kbd>&lt;leader&gt;gg</kbd>                                | ~~Lazygit (root dir)~~                                   | n        |
| <kbd>&lt;leader&gt;gG</kbd>                                | ~~Lazygit (cwd)~~                                        | n          |
| <kbd>&lt;leader&gt;qq</kbd>                                | Quit all                                             | n          |
| <kbd>&lt;leader&gt;ui</kbd>                                | Inspect Pos                                          | n          |
| <kbd>&lt;leader&gt;ft</kbd>| Toggle Terminal                                 | n          |
| <kbd>&lt;leader&gt;ft</kbd>, <kbd>&lt;C-/&gt;</kbd>        | ~~Terminal (root dir)~~                                  | n          |
| <kbd>&lt;leader&gt;fT</kbd>,                               | ~~Terminal (cwd)~~                                      | n          |
| <kbd>&lt;C-_&gt;</kbd>                                     | which_key_ignore                                     | n, t       |
| <kbd>&lt;esc&gt;&lt;esc&gt;</kbd>                          | Enter normal mode                                    | t          |
| <kbd>&lt;C-/&gt;</kbd>                                     | Hide Terminal                                        | t          |
| <kbd>&lt;leader&gt;ww</kbd>                                | Other window                                         | n          |
| <kbd>&lt;leader&gt;wd</kbd>                                | Delete Window                                        | n          |
| <kbd>&lt;leader&gt;w-</kbd>, <kbd>&lt;leader&gt;-</kbd>    | Split window below                                   | n          |
| <kbd>&lt;leader&gt;w\| </kbd>, <kbd>&lt;leader&gt;\|</kbd> | Split window right                                   | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;l</kbd>                      | Last Tab                                             | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;f</kbd>                      | First Tab                                            | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;&lt;tab&gt;</kbd>            | New Tab                                              | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;d</kbd>                       |      Delete Tab                                                | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;]</kbd>                      | Next Tab                                             | n          |
| <kbd>&lt;leader&gt;&lt;tab&gt;[</kbd>                       |      Previous Tab                                                | n          |
| <kbd>&lt;leader&gt;p</kbd> | Preserve the yanked word in the register when pasted | x     |
| <kbd>&lt;leader&gt;d</kbd> | Delete the void register                             | n, v  |

## Plugins

### LSP

Language Server Protocol

| Key/Chord                          | Description          | Mode |
| ---------------------------- | -------------------- | ---- |
| <kbd>&lt;leader&gt;cd</kbd>  | Line Diagnostics     | n    |
| <kbd>&lt;leader&gt;cl </kbd> | Lsp Info             | n    |
| <kbd>gd</kbd>                | Go to Definition     | n    |
| <kbd>gr</kbd>                | Go to References     | n    |
| <kbd>gD</kbd>                | Go to Declaration    | n    |
| <kbd>gI</kbd>                | Go to Implementation | n    |
| <kbd>gy</kbd>                | Go to T\[y]pe        | n    |
| <kbd>K</kbd>                 | Hover                | n    |
| <kbd>gK</kbd>                | Signature Help       | n    |
| <kbd>&lt;C-k&gt;</kbd>       | Signature Help       | i    |
| <kbd>]d</kbd>                | Next Diagnostic      | n    |
| <kbd>[d</kbd>                | Previous Diagnostic  | n    |
| <kbd>]e</kbd>                | Next Error           | n    |
| <kbd>[e</kbd>                | Previous Error       | n    |
| <kbd>]w</kbd>                | Next Warning         | n    |
| <kbd>[w</kbd>                | Previous Warning     | n    |
| <kbd>&lt;leader&gt;cf</kbd>  | Format Document      | n |
| <kbd>&lt;leader&gt;cf</kbd>  | Format Range      | v |
| <kbd>&lt;leader&gt;ca</kbd>  | Code Action          | n, v |
| <kbd>&lt;leader&gt;cA</kbd>  | Source Action        | n    |
| <kbd>&lt;leader&gt;cr</kbd>  | Rename                     |      |

### [rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)

When the LSP server attaches:

| Key/Chord                  | Description             | Mode |
| -------------------------- | ----------------------- | ---- |
| <kbd>&lt;C-Space&gt;</kbd> | Show hover actions      | n    |
| <kbd>&lt;leader&gt;a</kbd> | Show code actions group | n    |


### [bufferline.nvim](https://github.com/akinsho/bufferline.nvim.git)

Adds a line of all the open buffers making it look almost like tabs.

| Key/Chord                         | Description       | Mode |
| --------------------------- | ----------------- | ---- |
| <kbd>&lt;leader&gt;bp</kbd> | Toggle Buffer Pin | N    |
| <kbd>&lt;leader&gt;bP</kbd> | Delete unpinned buffers | N    |

### [mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)

| Key/Chord                   | Description   | Mode |
| --------------------------- | ------------- | ---- |
| <kbd>&lt;leader&gt;bd</kbd> | Delete Buffer | n    |
| <kbd>&lt;leader&gt;bD</kbd> | Delete Buffer (Force) | n    |

### [flit.nvim](https://github.com/ggandor/flit.nvim)

<kbd>f</kbd>/<kbd>F</kbd>/<kbd>t</kbd>/<kbd>T</kbd> on steroids, building on the [Leap](https://github.com/ggandor/leap.nvim) interface.

**Usage**
- Type <kbd>f</kbd> enter the character to jump toward.
- If multiple options are allowed, enter the label

| Key/Chord    | Description                      | Mode |
| ------------ | -------------------------------- | ---- |
| <kbd>f</kbd> | Find (inclusive) forward motion  | n    |
| <kbd>F</kbd> | Find (inclusive) backward motion | n    |
| <kbd>t</kbd> | To (exclusive) forward motion    | n    |
| <kbd>T</kbd> | To (exclusive) backward motion   | n    |
 
### [leap.nvim](https://github.com/ggandor/leap.nvim.git)

Leap is a general-purpose motion plugin for Neovim.

__Usage__ 
- Type  <kbd>sl</kbd>
- Enter the first character and second character for your search
- If there are multiple options enter the additional label

| Key/Chord     | Description       | Mode    |
| ------------- | ----------------- | ------- |
| <kbd>&lt;leader&gt;sl</kbd>  | Leap forward to   | n, x, o |
| <kbd>&lt;leader&gt;sL</kbd>  | Leap backward to  | n, x, o |
| <kbd>gsl</kbd> | Leap from windows | n, x, o        |

### [mini.surround](https://github.com/echasnovski/mini.surround.git)

Surround text with other characters

| Key/Chord      | Description                           | Mode |
| -------------- | ------------------------------------- | ---- |
| <kbd>ysa</kbd> | Add Surrounding {motion}              | n, v |
| <kbd>ysd</kbd> | Delete Surrounding                    | n    |
| <kbd>ysf</kbd> | Find right surrounding                | n    |
| <kbd>ysF</kbd> | Find left surrounding                 | n    |
| <kbd>ysr</kbd> | Replace surrounding                   | n    |
| <kbd>ysn</kbd> | Update `MiniSurround.config.n_lines` | n    |

## [Undotree](https://github.com/mbbill/undotree)

Tracks a branching tree of changes that can be navigated

| Key/Chord                  | Description             | Mode |
| -------------------------- | ----------------------- | ---- |
| <kbd>&lt;leader&gt;u</kbd> | Show the undotree panel | n     |


### ~~[neo-tree.nvim __NOT INSTALLED__](https://github.com/nvim-neo-tree/neo-tree.nvim.git)~~
A folder explorer

| Key/Chord                         | Description                | Mode |
| --------------------------- | -------------------------- | ---- |
| <kbd>&lt;leader&gt;fe</kbd>, <kbd>&lt;leader&gt;e</kbd> | Open in the root directory | n    |
| <kbd>&lt;leader&gt;fE</kbd>, <kbd>&lt;leader&gt;E</kbd> | Open in the CWD | n    |

### ~~[noice.nvim __NOT INSTALLED__](https://github.com/folke/noice.nvim.git)~~

A UI that replaces `messages`, `cmdline`, and the `popupmenu`.

| Key/Chord                    | Description        | Mode    |
| ---------------------------- | ------------------ | ------- |
| <kbd>&lt;S-Enter&gt;</kbd>   | Redirect Cmdline   | c       |
| <kbd>&lt;leader&gt;snl</kbd> | Noice Last Message | n       |
| <kbd>&lt;leader&gt;snh</kbd> | Noice History      | n       |
| <kbd>&lt;leader&gt;sna</kbd> | Noice All          | n       |
| <kbd>&lt;leader&gt;snd</kbd> | Dismiss all        | n       |
| <kbd>&lt;C-f&gt;</kbd>       | Scroll Forward     | i, n, s |
| <kbd>&lt;C-b&gt;</kbd>       | Scroll Backward                   | i, n, s |

### [nvim-notify __NOT INSTALLED__](https://github.com/rcarriga/nvim-notify.git)

A fancy, configurable, notification manager for Neovim

| Key/Chord                   | Description               | Mode |
| --------------------------- | ------------------------- | ---- |
| <kbd>&lt;leader&gt;un</kbd> | Dismiss all Notifications | n     |

### [nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)

A search and replace panel for Neovim

| Key/Chord                   | Description      | Mode |
| --------------------------- | ---------------- | ---- |
| <kbd>&lt;leader&gt;sr</kbd> | Replace in Files | n     |

### [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter.git)

A integration for tree-sitter for Neovim

| Key/Chord                  | Description         | Mode |
| -------------------------- | ------------------- | ---- |
| <kbd>&lt;C-Space&gt;</kbd> | Increment selection | n    |
| <kbd>&lt;BS&gt;</kbd>      | Decrement selection | n     |

### [persistence.nvim](https://github.com/folke/persistence.nvim.git)

Automated session management

| Key | Description | Mode |
| --- | ----------- | ---- |
| <kbd>&lt;leader&gt;qs</kbd> | Restore Session | n    |
| <kbd>&lt;leader&gt;ql</kbd> | Restore Last Session | n    |
| <kbd>&lt;leader&gt;qd</kbd> | Don't Save Current Session| n    |

### [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>,`, `<leader>fb` | Search Buffers|**n**|
|`<leader>:`|Command History|**n**|
|`<leader><space>`, `<leader>ff`|Find Files (root dir)|**n**|
|`<leader>fF`|Find Files (cwd)|**n**|
|`<leader>fr`|Recent (root dir)|**n**|
|`<leader>fR`|Recent (cwd)|**n**|
|`<leader>gc`|git commits|**n**|
|`<leader>gs`|git status and file diff|**n**|
|`<leader>sa`|Auto Commands|**n**|
|`<leader>sb`|Fuzzy Search Current Buffer|**n**|
|`<leader>sc`|Command History|**n**|
|`<leader>sC`|Commands|**n**|
|`<leader>sd`|Document diagnostics|**n**|
|`<leader>sD`|Workspace diagnostics|**n**|
|`<leader>sg`, `<leader>/`| Live Grep (root dir)|**n**|
|`<leader>sG`|Grep (cwd)|**n**|
|`<leader>sh`|Help Pages|**n**|
|`<leader>sH`|Search Highlight Groups|**n**|
|`<leader>sk`|Key Maps|**n**|
|`<leader>sM`|Man Pages|**n**|
|`<leader>sm`|Jump to Mark|**n**|
|`<leader>so`|Options|**n**|
|`<leader>sR`|Resume|**n**|
|`<leader>sw`|Word (root dir)|**n**|
|`<leader>sW`|Word (cwd)|**n**|
|`<leader>uC`|Colorscheme with preview|**n**|
|`<leader>ss`|Goto Symbol|**n**|
|`<leader>sS`|Goto Symbol (Workspace)|**n**|

### [todo-comments.nvim](https://github.com/folke/todo-comments.nvim.git)

Use to highlight and search for todo comments like `TODO`, `HACK`, `BUG`

|Key/Chord|Description|Mode|
|---|---|---|
|`]t`|Next todo comment|**n**|
|`[t`|Previous todo comment|**n**|
|`<leader>xt`|Todo (Trouble)|**n**|
|`<leader>xT`|Todo/Fix/Fixme (Trouble)|**n**|
|`<leader>st`|Todo|**n**|
|`<leader>sT`|Todo/Fix/Fixme|**n**|


### [trouble.nvim](https://github.com/folke/trouble.nvim.git)

A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>xx`|Document Diagnostics (Trouble)|**n**|
|`<leader>xX`|Workspace Diagnostics (Trouble)|**n**|
|`<leader>xL`|Location List (Trouble)|**n**|
|`<leader>xQ`|Quickfix List (Trouble)|**n**|
|`[q`|Previous trouble/quickfix item|**n**|
|`]q`|Next trouble/quickfix item|**n**|

### [vim-illuminate](https://github.com/RRethy/vim-illuminate.git)

Vim plugin for automatically highlighting other uses of the word under the cursor using either LSP, Tree-sitter, or regex matching.

|Key/Chord|Description|Mode|
|---|---|---|
|`]]`|Next Reference|**n**|
|`[[`|Prev Reference|**n**|


### [nvim-dap](https://github.com/mfussenegger/nvim-dap.git)

Is a Debug Adapter Protocol client implementation for Neovim

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>dB`|Breakpoint Condition|**n**|
|`<leader>db`|Toggle Breakpoint|**n**|
|`<leader>dc`|Continue|**n**|
|`<leader>dC`|Run to Cursor|**n**|
|`<leader>dg`|Go to line (no execute)|**n**|
|`<leader>di`|Step Into|**n**|
|`<leader>dj`|Down|**n**|
|`<leader>dk`|Up|**n**|
|`<leader>dl`|Run Last|**n**|
|`<leader>do`|Step Out|**n**|
|`<leader>dO`|Step Over|**n**|
|`<leader>dp`|Pause|**n**|
|`<leader>dr`|Toggle REPL|**n**|
|`<leader>ds`|Session|**n**|
|`<leader>dt`|Terminate|**n**|
|`<leader>dw`|Widgets|**n**|

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>td`|Debug Nearest|**n**|

### [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui.git)

A UI for nvim-dap

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>du`|Dap UI|**n**|
|`<leader>de`|Eval|**n**, **v**|

### [one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind.git)

Is an **DAP adapter** for the Neovim lua language

**Not installed** 

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>daL`|Adapter Lua Server|**n**|
|`<leader>dal`|Adapter Lua|**n**|


### [neotest](https://github.com/nvim-neotest/neotest.git)

A framework for interacting with tests within NeoVim.

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>tt`|Run File|**n**|
|`<leader>tT`|Run All Test Files|**n**|
|`<leader>tr`|Run Nearest|**n**|
|`<leader>ts`|Toggle Summary|**n**|
|`<leader>to`|Show Output|**n**|
|`<leader>tO`|Toggle Output Panel|**n**|
|`<leader>tS`|Stop|**n**|

### [edgy.nvim](https://github.com/folke/edgy.nvim.git)

A Neovim plugin to easily create and manage predefined window layouts, bringing a new edge to your workflow.

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>ue`|Edgy Toggle|**n**|
|`<leader>uE`|Edgy Select Window|**n**|

### [project.nvim](https://github.com/ahmedkhalf/project.nvim.git)

**project.nvim** is an all in one neovim plugin written in lua that provides superior project management.

**Not installed**

|Key/Chord|Description|Mode|
|---|---|---|
|`<leader>fp`|Projects|**n**|

### [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

Snippets

| Key/Chord                      | Description      | Mode |
| ------------------------ | ---------------- | ---- |
| <kbd>&lt;tab&gt;</kbd>   | Next Snippet     | i, s |
| <kbd>&lt;S-tab&gt;</kbd> | Previous Snippet | i, s     |

### [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

Intellisense/Autocomplete

| Key/Chord                        | Description                           | Mode |
| -------------------------- | ------------------------------------- | ---- |
| <kbd>&lt;C-n&gt;</kbd>     | Next Item                             | i    |
| <kbd>&lt;C-p&gt;</kbd>     | Previous Item                         | i    |
| <kbd>&lt;C-b&gt;</kbd>     | Scroll Docs back                      | i    |
| <kbd>&lt;C-f&gt;</kbd>     | Scroll Docs forward                   | i    |
| <kbd>&lt;C-space&gt;</kbd> | Select the item                       | i    |
| <kbd>&lt;C-e&gt;</kbd>     | Abort the autocomplete                | i    |
| <kbd>&lt;CR&gt;</kbd>      | Selects the current item              | i    |
| <kbd>&lt;S-CR&gt;</kbd>    | Selects and replaces the current item | i    |

