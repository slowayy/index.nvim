const http = require("http")
const server = http.createServer((req, res) => {
  if (req.url == '/') {
    res.end("<p>teste home</p>")
  } 


})


server.listen(3020, 'localhost', () => {
})
