return {
  cmd = {"glsl_analyzer"}, -- Or the full path if it's not in your $PATH
  -- Add any other settings glsl_analyzer might require here.  Check its documentation.
  -- For example, if it needs a configuration file:
  -- root_dir = function(fname)
  --   return vim.fs.find_up(".glsl_analyzer_config", {cwd = fname}) or vim.fn.getcwd()
  -- end,
}
