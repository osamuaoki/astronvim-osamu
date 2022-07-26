-- Configure AstroNvim updates
M = {
  remote = "origin", -- remote to use
  channel = "nightly", -- "stable" or "nightly"
  version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
  branch = "main", -- branch name (NIGHTLY ONLY)
  commit = nil, -- commit hash (NIGHTLY ONLY)
  pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
  skip_prompts = false, -- skip prompts about breaking changes
  show_changelog = true, -- show the changelog after performing an update
  remotes = { ["osamuaoki"] = "osamuaoki/AstroNvim", },
}

return M
