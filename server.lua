local app = require "milua"
require("read")
local usr = io.open("active-users.lua","a+")
io.output(usr)
app.add_handler(
  "GET",
  "/",
  function()
    
  end

)

app.add_handler(
    "POST",
    "/jsoncc",
    function()
        return io.write("a"), {
      ["Content-Type"] = "text/plain"
    }
    end
)






local config = {
  HOST = "127.0.0.1",
  PORT = "9213"

}

app.start(config)
