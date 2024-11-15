local http = require("socket.http")
local ltn12 = require("ltn12")
local body = {}

local res, code, headers, status = http.request({
	method = "POST",
	url = "http://localhost:3020/useradd",
	source = ltn12.source.string("var=123"),
	headers = {
		["content-type"] = "text/plain",
		["content-length"] = "7",
	},
	sink = ltn12.sink.table(body),
})

response = table.concat(body)
