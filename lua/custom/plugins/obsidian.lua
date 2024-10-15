require('obsidian').setup {
  workspaces = {
    {
      name = 'old vaults',
      path = "D:/KELREY'S/Temporary Vaults",
    },
  },

  daily_notes = {
    folder = 'log/daily',
  },

  -- Optional, if you keep notes in a specific subdirectory of your vault.
  notes_subdir = 'vim_notes',

  new_notes_location = 'notes_subdir',

  completion = {
    -- Set to false to disable completion.
    nvim_cmp = true,
    -- Trigger completion at 2 chars.
    min_chars = 2,
  },

  preferred_link_style = 'markdown',

  markdown_link_func = function(opts)
    return require('obsidian.util').markdown_link(opts)
  end,

  -- Optional, sort search results by "path", "modified", "accessed", or "created".
  -- The recommend value is "modified" and `true` for `sort_reversed`, which means, for example,
  -- that `:ObsidianQuickSwitch` will show the notes sorted by latest modified time
  sort_by = 'modified',
  sort_reversed = true,

  -- Set the maximum number of lines to read from notes on disk when performing certain searches.
  search_max_lines = 1000,

  picker = {
    -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
    name = 'telescope.nvim',
    -- Optional, configure key mappings for the picker. These are the defaults.
    -- Not all pickers support all mappings.
    note_mappings = {
      -- Create a new note from your query.
      new = '<C-x>',
      -- Insert a link to the selected note.
      insert_link = '<C-l>',
    },
    tag_mappings = {
      -- Add tag(s) to current note.
      tag_note = '<C-x>',
      -- Insert a tag at the current location.
      insert_tag = '<C-l>',
    },
  },

  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
  -- URL it will be ignored but you can customize this behavior here.
  ---@param url string
  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    vim.ui.open(url) -- need Neovim 0.10.0+
  end,

  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
  -- file it will be ignored but you can customize this behavior here.
  ---@param img string
  follow_img_func = function(img)
    vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
  end,

  -- Optional, set to true if you use the Obsidian Advanced URI plugin.
  -- https://github.com/Vinzent03/obsidian-advanced-uri
  use_advanced_uri = true,

  -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.
  open_app_foreground = false,

  -- Optional, determines how certain commands open notes. The valid options are:
  -- 1. "current" (the default) - to always open in the current window
  -- 2. "vsplit" - to open in a vertical split if there's not already a vertical split
  -- 3. "hsplit" - to open in a horizontal split if there's not already a horizontal split
  open_notes_in = 'vsplit',
  ui = {
    enable = false,
  },
  -- ui = {
  --   enable = true, -- set to false to disable all additional syntax features
  --   update_debounce = 200, -- update delay after a text change (in milliseconds)
  --   max_file_length = 5000, -- disable UI features for files with more than this many lines
  --   -- Define how various check-boxes are displayed
  --   checkboxes = {
  --     -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
  --     [' '] = { char = '󰄱', hl_group = 'ObsidianTodo' },
  --     ['x'] = { char = '', hl_group = 'ObsidianDone' },
  --     ['>'] = { char = '', hl_group = 'ObsidianRightArrow' },
  --     ['~'] = { char = '󰰱', hl_group = 'ObsidianTilde' },
  --     ['!'] = { char = '', hl_group = 'ObsidianImportant' },
  --     -- Replace the above with this if you don't have a patched font:
  --     -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
  --     -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },
  --
  --     -- You can also add more custom ones...
  --   },
  --   -- Use bullet marks for non-checkbox lists.
  --   bullets = { char = '•', hl_group = 'ObsidianBullet' },
  --   external_link_icon = { char = '', hl_group = 'ObsidianExtLinkIcon' },
  --   -- Replace the above with this if you don't have a patched font:
  --   -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
  --   reference_text = { hl_group = 'ObsidianRefText' },
  --   highlight_text = { hl_group = 'ObsidianHighlightText' },
  --   tags = { hl_group = 'ObsidianTag' },
  --   block_ids = { hl_group = 'ObsidianBlockID' },
  --   hl_groups = {
  --     -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
  --     ObsidianTodo = { bold = true, fg = '#f78c6c' },
  --     ObsidianDone = { bold = true, fg = '#89ddff' },
  --     ObsidianRightArrow = { bold = true, fg = '#f78c6c' },
  --     ObsidianTilde = { bold = true, fg = '#ff5370' },
  --     ObsidianImportant = { bold = true, fg = '#d73128' },
  --     ObsidianBullet = { bold = true, fg = '#89ddff' },
  --     ObsidianRefText = { underline = true, fg = '#c792ea' },
  --     ObsidianExtLinkIcon = { fg = '#c792ea' },
  --     ObsidianTag = { italic = true, fg = '#89ddff' },
  --     ObsidianBlockID = { italic = true, fg = '#89ddff' },
  --     ObsidianHighlightText = { bg = '#75662e' },
  --   },
  -- },
}
