-- generates an iterable letting us loop over an array easily
function values (t)
  local i = 0
  return function () i = i + 1; return t[i]  end
end
