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
}
