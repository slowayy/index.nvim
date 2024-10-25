require("active-users")
local users = io.open("active-users.lua", "r+")
io.input(users)
Active_users = Active_users + 1
print(io.read())

