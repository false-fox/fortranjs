const express = require('express')
const app = express()
const fs = require("fs")
const path = require("path");
const {
    exec
} = require("child_process")
//Compile to build


const port = 3000
app.use('/public', express.static('public'));
app.use('/styles', express.static('styles'));


function test(req, res, next) {

    exec(`spawn-fcgi -n -a 127.0.0.1 -p 9000 ./build/pages${req.originalUrl}/index`, function (err, stdout, stderr) {

        if (err) {

            exec(`spawn-fcgi -n -a 127.0.0.1 -p 9000 ./build/pages/404`, function (err, stdout2, stderr) {
                if (err) {
                    console.error("----------------------------\n Error occured while fetching 404 page, are your paths set correctly?\n----------------------------\n")
                    console.error(err)
                }
                res.send(stdout2)
            })
            console.log(err)

        } else {
            res.send(stdout)
        }

    })
}

app.get("/*", test);

app.listen(port, () => {
    console.log(`Webserver is live at localhost:${port}!`)
})
