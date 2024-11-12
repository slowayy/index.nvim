const express = require("express")
const server = express()
const port = 3020 

server.get("/", (req, res) => {
  res.status(200).send("OK!")
})




server.listen(port, () =>{
console.log("Running!")
})
