local Pegasus = require 'pegasus'

local server = Pegasus:new()

server:start(function (req, res)
  res:addHeaders('p', 'text/html', ' asasdas'):write('hsdasdasdasdasdasdello pegasus world!')

  return res:close()
end)
