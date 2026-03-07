local path = require("pandoc.path")

local function file_exists(filepath)
  local f = io.open(filepath, "rb")
  if f then
    f:close()
    return true
  end
  return false
end

local function input_dir()
  if PANDOC_STATE and PANDOC_STATE.input_files and #PANDOC_STATE.input_files > 0 then
    local dir = path.directory(PANDOC_STATE.input_files[1])
    if dir ~= "" then
      return dir
    end
  end
  return "."
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
  local candidate = path.normalize(path.join({input_dir(), webp_src}))

  -- Only rewrite when a matching .webp asset actually exists beside source notes.
  if file_exists(candidate) then
    img.src = webp_src
  end

  return img
end
