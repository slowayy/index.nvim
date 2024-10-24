
local pegasus = require "pegasus"
local server = pegasus:new({
  port='5050'
})


server:start(function (req, res)
res:addHeader('Content-Type', 'text/html'):write('hesdasdaslo pegasus worlASDASDASDd!')
return res:closed()
end)
