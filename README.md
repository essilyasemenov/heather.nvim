# heather.nvim

> A dark Neovim colorscheme with purple undertones, coral operators, and mint strings.

![screenshot](https://raw.githubusercontent.com/essilyasemenov/heather.nvim/main/assets/screenshot.png)

---

## Palette

| | Element    | Hex       |
|---|------------|-----------|
| 🟣 | Keywords   | `#E080E0` |
| 🔵 | Functions  | `#C8BFFF` |
| 🟢 | Strings    | `#9FF5C0` |
| 🟡 | Numbers    | `#F5CA78` |
| 🔴 | Operators  | `#FF9090` |
| 🩷 | Types      | `#F578A2` |
| ⚫ | Background | `#141416` |
| ⚪ | Text       | `#E8E8F8` |

---

## Requirements

- Neovim 0.8+
- Terminal with `termguicolors` support

---

## Installation

**lazy.nvim**

```lua
{
  "essilyasemenov/heather.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("heather").load()
  end,
}
```

**packer.nvim**

```lua
use {
  "essilyasemenov/heather.nvim",
  config = function()
    require("heather").load()
  end,
}
```

---
