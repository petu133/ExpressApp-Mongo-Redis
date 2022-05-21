const { application } = require("express");
const express = require("express");
const app = express();
const port = process.env.PORT || 3000
//if exists->set PORT environment variable to the const port || otherwise->default to value 3000
app.listen(port, ()=> console.log(`listening on port ${port}`));

app.get("/", (req, res) =>{
    res.send("MUKURO is AWESOME")
})