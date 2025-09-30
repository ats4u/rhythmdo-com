local key = os.getenv("RHY_VAR")

local function log(msg)
  io.stderr:write("[getmeta] ", msg, "\n")
end

function Pandoc(doc)
  if not key or key == "" then
    log("RHY_VAR not set"); return doc
  end
  local v = doc.meta[key]
  if v then
    io.write(pandoc.utils.stringify(v), "\n")
  else
    log("missing var: " .. key)
  end
  return doc
end

