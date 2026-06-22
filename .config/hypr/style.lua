-----------
-- STYLE --
-----------

-- Source colours
require("colours")

hl.config({
  general = {
    gaps_in  = 8,
    gaps_out = 16,

    border_size = 3,

    col = {
      active_border   = bg1,
      inactive_border = fg5,
    },

    resize_on_border = false,

    allow_tearing = false,

    layout = "dwindle",
  },

  decoration = {
    rounding       = 16,
    rounding_power = 2,

    active_opacity   = 0.95,
    inactive_opacity = 0.42,

    shadow = {
      enabled      = true,
      range        = 8,
      render_power = 12,
      color        = fg5,
    },

    blur = {
      enabled  = true,
      size     = 5,
      passes   = 3,
      vibrancy = 0.14,
    },
  },

  animations = {
    enabled = true,
  },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
