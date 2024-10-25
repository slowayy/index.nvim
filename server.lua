local app = require "milua"
require("read")
local usr = io.open("active-users.lua","a+")
io.output(usr)
app.add_handler(
  "GET",
  "/",
  function()
    return "{\"date\":\"23\",\"user\":\"fc165869-9125-4674-bb46-ac6d0bd308ec\"}", {
      ["Content-Type"] = "text/json"
    }
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
