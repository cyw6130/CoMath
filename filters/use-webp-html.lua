local path = require("pandoc.path")

local function file_exists(filepath)
  local f = io.open(filepath, "rb")
  if f then
    f:close()
    return true
  end
  return false
end

-- Quarto copies .qmd to a temp dir before passing to Pandoc, so
-- PANDOC_STATE.input_files[1] points to the temp copy. We must check
-- the real source tree instead.
local function webp_exists_in_source(webp_src)
  local project_dir = os.getenv("QUARTO_PROJECT_DIR")
  if not project_dir then
    return false
  end

  -- Try project_dir/<webp_src> and project_dir/notes/<webp_src>
  local candidates = {
    path.normalize(path.join({project_dir, webp_src})),
    path.normalize(path.join({project_dir, "notes", webp_src})),
  }
  for _, c in ipairs(candidates) do
    if file_exists(c) then
      return true
    end
  end
  return false
end

function Image(img)
  if not FORMAT:match("html") then
    return img
  end

  local src = img.src or ""
  if not src:match("%.png$") then
    return img
  end

  local webp_src = src:gsub("%.png$", ".webp")

  if webp_exists_in_source(webp_src) then
    img.src = webp_src
  end

  return img
end
