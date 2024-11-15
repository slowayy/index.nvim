const express = require("express")
const server = express()
const fs = require("fs")
const port = 3020 

server.use(express.json());
server.get("/", (req, res) => {
  res.status(200).send("OK!") && console.log("OK!")
})

server.post("/useradd", (req, res) => {
const data = req.body;
  console.log("POST")

if (res.status(200))
{
  console.log("20")
} 
else {
console.log("sdomjnjndf")
  } 


})


server.listen(port, () =>{
console.log("Running!")
})
