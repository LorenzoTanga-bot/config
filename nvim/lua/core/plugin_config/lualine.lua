local colors = {
  color0 = '#393939',
  color1 = '#ee5396',
  color2 = '#3ddbd9',
  color3 = '#161616',
  color6 = '#dde1e6',
  color7 = '#78a9ff',
  color8 = '#bd95ff',
  color9 = '#ff7eb6',
  color10 = '#42be65'
}


local theme = {
  replace = {
    a = { fg = colors.color0, bg = colors.color1 },
    b = { fg = colors.color2, bg = colors.color3 },
  },
  inactive = {
    a = { fg = colors.color0, bg = colors.color7 },
    b = { fg = colors.color6, bg = colors.color3 },
    z = { fg = colors.color0, bg = colors.color3 },
  },
  normal = {
    a = { fg = colors.color0, bg = colors.color7 },
    b = { fg = colors.color6, bg = colors.color3 },
    c = { fg = colors.color6, bg = colors.color3 },
    z = { fg = colors.color6, bg = colors.color3 },
  },
  visual = {
    a = { fg = colors.color0, bg = colors.color8 },
    b = { fg = colors.color6, bg = colors.color3 },
    y = { fg = colors.color6, bg = colors.color3 },
    z = { fg = colors.color9, bg = colors.color3 },
  },
  insert = {
    a = { fg = colors.color0, bg = colors.color9 },
    b = { fg = colors.color6, bg = colors.color3 },
    z = { fg = colors.color9, bg = colors.color3 },
  },
  command = {
    a = { fg = colors.color0, bg = colors.color10 },
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
