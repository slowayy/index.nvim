local http = require("socket.http")
local ltn12 = require("ltn12")

-- The Request Bin test URL: http://requestb.in/12j0kaq1
function sendRequest()
	local path = "localhost:3020/"
	local payload = [[ {"key":"My Key","name":"My Name","description":"The description","state":1} ]]
	local response_body = {}

	local res, code, response_headers, status = http.request({
		url = path,
		method = "GET",
		headers = {},
		source = ltn12.source.string(payload),
		sink = ltn12.sink.table(response_body),
	})
end
