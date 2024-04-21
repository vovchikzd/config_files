return {
  "Mofiqul/dracula.nvim",
  priority = 1000,
  colors = { bg = "#282A36", fg = "#F8F8F2", selection = "#44475A",
    comment = "#6272A4", red = "#FF5555", orange = "#FFB86C",
    yellow = "#F1FA8C", green = "#50fa7b", purple = "#BD93F9",
    cyan = "#8BE9FD", pink = "#FF79C6", bright_red = "#FF6E6E",
    bright_green = "#69FF94", bright_yellow = "#FFFFA5", bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF", bright_cyan = "#A4FFFF", bright_white = "#FFFFFF",
    menu = "#21222C", visual = "#3E4452", gutter_fg = "#4B5263",
    nontext = "#3B4048", white = "#ABB2BF", black = "#191A21",
  },
  show_end_of_buffer = true, -- show the '~' characters after the end of buffers
  transparent_bg = false, -- use transparent background 
  lualine_bg_color = "#44475a", -- set custom lualine background color 
  italic_comment = true, -- set italic comment 
  overrides = {}, -- overrides the default highlights with table see `:h synIDattr`
  config = function()
    require("dracula").load("dracula")
  end
}
