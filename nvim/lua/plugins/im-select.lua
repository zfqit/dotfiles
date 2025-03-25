-- auto switch input method
-- github: https://github.com/keaising/im-select.nvim

return {
  "keaising/im-select.nvim",
  event = "VeryLazy",
  enabled = true,
  opts = function()
    return {
      default_im_select = "com.apple.keylayout.ABC",
      default_command = "/usr/local/bin/macism",
      set_default_events = {
        "VimEnter",
        "FocusGained",
        "InsertLeave",
        "CmdlineLeave",
      },
      set_previous_events = { "InsertEnter" },
      keep_quiet_on_no_binary = true,
      async_switch_im = true,
    }
  end,
}
