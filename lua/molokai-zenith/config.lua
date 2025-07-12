local config = {
  defaults = {
    transparent = false,
  },
}

setmetatable(config, { __index = config.defaults })

return config
