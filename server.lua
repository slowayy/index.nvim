local app = require("milua")
local usr = io.open("active-users.lua", "a+")
io.output(usr)

app.add_handler("POST", "/useradd", function()
	return io.write(""), {
		["Content-Type"] = "text/json",
	}
end)

local config = {
	HOST = "127.0.0.1",
	PORT = "9213",
}

app.start(config)
