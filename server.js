const express = require("express")
const server = express()
const fs = require("fs")
const port = 3020 

server.use(express.json());
server.get("/", (req, res) => {
  res.status(200).send("OK!")
})

server.post("/useradd", (req, res) => {
const data = req.body;

fs.writeFile("data.json", JSON.stringify(data, null, 2))
console.log("a")
})


server.listen(port, () =>{
console.log("Running!")
})
