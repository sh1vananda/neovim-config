# Neovim Control Reference

This document contains an exhaustive list of controls for the LazyVim configuration setup, including standard Vim motions, operators, and custom LazyVim keybindings.

## Legend
*   **Leader**: Space bar (`<Space>`)
*   **C-**: Control Key
*   **S-**: Shift Key
*   **A-**: Alt Key
*   **CR**: Enter/Return
*   **Esc**: Escape

## Core Workflow Keybindings

This section outlines the actual daily-driver keybindings for building code. No nonsense, no fluff. Just the bindings you need to navigate, edit, and debug.

### File Explorer & Sidebar Navigation (Neo-tree)
*   `<leader>e`: Toggle file explorer sidebar.
*   `j` / `k`: Move cursor down / up in the file tree.
*   `Enter` or `l`: Open selected file or expand directory.
*   `h`: Collapse directory.
*   `a`: Add new file or directory (add a trailing `/` to create a directory).
*   `r`: Rename file or directory.
*   `d`: Delete file or directory.
*   `x`: Cut file or directory.
*   `y`: Copy file or directory.
*   `p`: Paste cut or copied file/directory.
*   `H` or `I`: Toggle visibility of hidden files (dotfiles).

### File Management & Buffers
*   `<leader><space>` or `<leader>ff`: Find file in project.
*   `<leader>fr`: Find recently opened files.
*   `<C-s>`: Save file manually.
*   `<leader>bd`: Close current file (delete buffer).
*   `H` (Shift+h): Switch to the previous open buffer (tab left).
*   `L` (Shift+l): Switch to the next open buffer (tab right).
*   `<leader>,` or `<leader>bb`: Open selection list for active buffers.
*   `<leader>`` (backtick): Switch back to the last active buffer.
*   `<leader>bp`: Pin current buffer to prevent automatic closing.

### Multi-Window Splits & Navigation
*   `<leader>|`: Split window vertically.
*   `<leader>-`: Split window horizontally.
*   `C-h`: Move cursor to the left split window.
*   `C-j`: Move cursor to the bottom split window.
*   `C-k`: Move cursor to the top split window.
*   `C-l`: Move cursor to the right split window.
*   `<leader>wd`: Close current split window.

### Code Selection, Editing & Refactoring
*   `<C-a>`: Select all code in the current file.
*   `v`: Start visual character selection.
*   `V`: Start visual line selection.
*   `<C-v>`: Start visual block (column) selection.
*   `<C-space>`: Expand visual selection incrementally (syntax-aware).
*   `Backspace`: Shrink visual selection incrementally.
*   `gcc`: Toggle comment on the current line.
*   `gc{motion}`: Toggle comment on the targeted motion.
*   `<leader>cf`: Auto-format current buffer.
*   `<leader>cr`: Rename code symbol (variable, function, class) project-wide via LSP.
*   `<leader>ca`: Trigger LSP code actions and quick-fixes.
*   `gd`: Go to definition of symbol under cursor.
*   `gr`: Go to references of symbol under cursor.
*   `gI`: Go to implementation of symbol under cursor.
*   `gy`: Go to type definition of symbol under cursor.
*   `K`: Show documentation hover popup for symbol under cursor.

### Search & Grep
*   `<leader>sg`: Search for text string across all files in the project (grep).
*   `<leader>sw`: Search for word under cursor across project.

### Terminals & Command Run
*   `C-/`: Toggle floating terminal window.
*   `<leader>ft`: Open terminal split at the project root directory.
*   `<leader>fT`: Open terminal split at the current file's directory.
*   `Esc Esc`: Exit terminal insertion mode to normal mode (allows window navigation).
*   `C-h` / `C-j` / `C-k` / `C-l`: Move cursor out of terminal split to code split (requires normal mode).
*   `exit`: Terminate terminal shell session.
*   `<leader>r`: Run current Python file interactively (python -i).
*   `<leader>cv`: Select Python virtual environment (venv-selector).

### Git & Code Diff
*   `<leader>gg`: Open lazygit terminal client.
*   `<leader>gd`: Open side-by-side git diff history (Diffview).
*   `<leader>gc`: Close git diff history.

Note: Automatic file saving is active in the background when leaving insert mode or stopping text input (auto-save.nvim).

---

## 1. Global Basics
*   `Esc`: Return to Normal Mode.
*   `:`: Enter Command Mode.
*   `u`: Undo.
*   `C-r`: Redo.
*   `.`: Repeat the last change/command.

---

## 2. Cursor Movement (Normal Mode)

### Basic Navigation
*   `h`: Move Left.
*   `j`: Move Down.
*   `k`: Move Up.
*   `l`: Move Right.

### Word Movement
*   `w`: Jump forward to start of next word.
*   `W`: Jump forward to start of next WORD (skips punctuation).
*   `b`: Jump backward to start of previous word.
*   `B`: Jump backward to start of previous WORD.
*   `e`: Jump forward to end of current word.
*   `E`: Jump forward to end of current WORD.
*   `ge`: Jump backward to end of previous word.

### Line Movement
*   `0`: Jump to start of line (column 0).
*   `^`: Jump to first non-blank character of line.
*   `$`: Jump to end of line.
*   `g_`: Jump to last non-blank character of line.
*   `gg`: Jump to first line of file.
*   `G`: Jump to last line of file.
*   `:{number}`: Jump to specific line number (e.g., `:10`).
*   `{number}G`: Jump to specific line number (e.g., `10G`).

### Screen Positioning
*   `H`: Jump to Top (High) of screen.
*   `M`: Jump to Middle of screen.
*   `L`: Jump to Bottom (Low) of screen.
*   `zt`: Scroll current line to Top of screen.
*   `zz`: Scroll current line to Middle of screen.
*   `zb`: Scroll current line to Bottom of screen.
*   `C-u`: Scroll Up half-page.
*   `C-d`: Scroll Down half-page.
*   `C-y`: Scroll line up without moving cursor.
*   `C-e`: Scroll line down without moving cursor.

### Character Search (Single Line)
*   `f{char}`: Find next occurrence of {char} on line.
*   `F{char}`: Find previous occurrence of {char} on line.
*   `t{char}`: Move cursor 'til (before) next occurrence of {char}.
*   `T{char}`: Move cursor 'til (after) previous occurrence of {char}.
*   `;`: Repeat last `f`/`F`/`t`/`T` search forward.
*   `,`: Repeat last `f`/`F`/`t`/`T` search backward.

### Code Structure
*   `%`: Jump between matching brackets `()`, `[]`, `{}`, or keywords (if/else).
*   `}`: Jump forward one paragraph/block.
*   `{`: Jump backward one paragraph/block.

---

## 3. Insert Mode
*   `i`: Insert before cursor.
*   `I`: Insert at beginning of line.
*   `a`: Append after cursor.
*   `A`: Append at end of line.
*   `o`: Open new line below and enter Insert mode.
*   `O`: Open new line above and enter Insert mode.
*   `C-z`: Undo last change (Custom Config).
*   `C-r`: Redo last change (Custom Config).

---

## 4. Editing & Operators
*   `x`: Delete character under cursor.
*   `X`: Delete character before cursor.
*   `r{char}`: Replace single character under cursor with {char}.
*   `R`: Enter Replace Mode (overwrite text).
*   `s`: Delete character and enter Insert mode (Substitute).
*   `S`: Delete entire line and enter Insert mode.
*   `J`: Join current line with the next line.
*   `~`: Toggle case (upper/lower) of character under cursor.

### Delete (d), Change (c), Yank (y)
*These operators wait for a motion key (e.g., `dw`).*

*   `dd`: Delete current line.
*   `cc`: Change current line (delete and Insert).
*   `yy`: Yank (Copy) current line.
*   `D`: Delete from cursor to end of line.
*   `C`: Change from cursor to end of line.
*   `dw`: Delete word.
*   `cw`: Change word.
*   `di(`: Delete inside parentheses `()`.
*   `ci(`: Change inside parentheses `()`.
*   `da(`: Delete around parentheses `()` (includes parens).
*   `di"`: Delete inside quotes.
*   `ci"`: Change inside quotes.
*   `dit`: Delete inside HTML/XML tag.
*   `cit`: Change inside HTML/XML tag.

### Formatting
*   `>`: Indent selection right.
*   `<`: Indent selection left.
*   `=`: Auto-indent code.
*   `gu{motion}`: Make text lowercase.
*   `gU{motion}`: Make text uppercase.
*   `gcc`: Toggle comment for current line.
*   `gc{motion}`: Toggle comment for target (e.g., `gcap` comments paragraph).

---

## 5. Visual Mode
*   `v`: Enable Visual Mode (character selection).
*   `V`: Enable Visual Line Mode (whole lines).
*   `C-v`: Enable Visual Block Mode (columns).
*   `o`: Move cursor to other end of selection.

---

## 6. Copy, Paste, Registers
*   `p`: Paste after cursor.
*   `P`: Paste before cursor.
*   `"{reg}y`: Yank into specific register (e.g., `"ay` copies to 'a').
*   `"{reg}p`: Paste from specific register (e.g., `"ap` pastes from 'a').
*   `C-a`: Select All (Custom Config - `ggVG`).
*   `%y`: Copy entire file content.

---

## 7. Search and Replace
*   `/{text}`: Search forward for text.
*   `?{text}`: Search backward for text.
*   `n`: Jump to next match.
*   `N`: Jump to previous match.
*   `*`: Search forward for word under cursor.
*   `#`: Search backward for word under cursor.
*   `:%s/old/new/g`: Replace all occurrences in file.
*   `:%s/old/new/gc`: Replace all occurrences with confirmation.
*   `:noh`: Clear search highlights.

---

## 8. Macros
*   `q{reg}`: Start recording macro into register (e.g., `qa`).
*   `q`: Stop recording.
*   `@{reg}`: Play macro from register (e.g., `@a`).
*   `@@`: Replay last executed macro.

---

## 9. LazyVim: General Leader Mappings

### Files & Config
*   `<Space> e`: Toggle File Explorer (Neo-tree).
*   `<Space> <Space>`: Find Files (Root Dir).
*   `<Space> .`: Browse Files (Root Dir).
*   `<Space> f f`: Find Files (Root Dir).
*   `<Space> f F`: Find Files (CWD).
*   `<Space> f r`: Recent Files.
*   `<Space> f c`: Config Files.
*   `<Space> f p`: Projects.
*   `<Space> f n`: New File.

### Search (Grep)
*   `<Space> s g`: Grep (Root Dir) - Search text in all files.
*   `<Space> s G`: Grep (CWD).
*   `<Space> s w`: Search word under cursor (Root Dir).
*   `<Space> s W`: Search word under cursor (CWD).
*   `<Space> s r`: Search and Replace (Spectre UI).

### Buffers (Tabs)
*   `<Space> ,`: Switch Buffer.
*   `<Space> b b`: Switch Buffer (List).
*   `<Space> b d`: Delete Buffer (Close file).
*   `<Space> b D`: Delete all other Buffers.
*   `<Space> b p`: Toggle Pin Buffer.
*   `<Space> ` (Backtick): Switch to last used buffer.
*   `H` (Shift+h): Previous Buffer.
*   `L` (Shift+l): Next Buffer.

### Git
*   `<Space> g g`: LazyGit (UI).
*   `<Space> g s`: Git Status.
*   `<Space> g b`: Git Blame line.
*   `<Space> g L`: Git Log.

### UI & Toggles
*   `<Space> u t`: Toggle Transparency/Theme colors.
*   `<Space> u w`: Toggle Wrap.
*   `<Space> u L`: Toggle Relative Line Numbers.
*   `<Space> z`: Toggle Zen Mode.
*   `<Space> h`: Open Dashboard (Custom Config).

---

## 10. LazyVim: Coding & LSP

### Diagnostics (Errors)
*   `<Space> x x`: Trouble (Error List panel).
*   `<Space> x L`: Location List.
*   `<Space> x Q`: Quickfix List.
*   `]d`: Next Diagnostic.
*   `[d`: Previous Diagnostic.
*   `]e`: Next Error.
*   `[e`: Previous Error.
*   `<Space> s d`: Search Diagnostics.

### Language Server
*   `K`: Hover Documentation.
*   `gd`: Go to Definition.
*   `gr`: Go to References.
*   `gI`: Go to Implementation.
*   `gy`: Go to Type Definition.
*   `gD`: Go to Declaration.
*   `<Space> c a`: Code Action.
*   `<Space> c r`: Rename symbol.
*   `<Space> c f`: Format File.
*   `<Space> c v`: Select Virtual Environment (Custom Config).

### Python Specific
*   `<Space> r`: Run Python File (Custom Config).

---

## 11. LazyVim: Testing
*   `<Space> t r`: Run Nearest Test.
*   `<Space> t f`: Run File Tests.
*   `<Space> t a`: Run All Tests.
*   `<Space> t s`: Stop Test.
*   `<Space> t o`: Show Test Output.
*   `<Space> t w`: Watch Tests.

---

## 12. LazyVim: Debugging (DAP)
*   `<Space> d b`: Toggle Breakpoint.
*   `<Space> d B`: Set Conditional Breakpoint.
*   `<Space> d c`: Continue / Start.
*   `<Space> d i`: Step Into.
*   `<Space> d o`: Step Over.
*   `<Space> d O`: Step Out.
*   `<Space> d t`: Terminate.
*   `<Space> d u`: Toggle Debugger UI.
*   `<Space> d e`: Evaluate expression (popup).

---

## 13. Window Management
*   `<Space> w w`: Cycle other windows.
*   `<Space> w d`: Delete window.
*   `<Space> -`: Split window below.
*   `<Space> |`: Split window right.
*   `C-h`: Go to Left Window.
*   `C-j`: Go to Down Window.
*   `C-k`: Go to Up Window.
*   `C-l`: Go to Right Window.
*   `C-Up`: Resize Window Taller.
*   `C-Down`: Resize Window Shorter.
*   `C-Left`: Resize Window Narrower.
*   `C-Right`: Resize Window Wider.

---

## 14. Terminal
*   `C-/`: Toggle Floating Terminal.
*   `<Space> f t`: Terminal (Root Dir).
*   `<Space> f T`: Terminal (CWD).
*   `<Space> t h`: Terminal Split Horizontal (Custom/LazyVim).
*   `C-h/j/k/l`: Navigate out of Terminal mode to Code window.
*   `Esc Esc`: Force Terminal to Normal Mode.
