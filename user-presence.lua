local cjson = require "cjson"
local uuid = require "lua_uuid"
local uuid_str = uuid()
local user = io.open("user.json", "w+")


io.output(user)
local json = cjson.encode({
date = os.date("%d"),
user = uuid_str
})

io.write(cjson.encode(json))
