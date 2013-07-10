express = require 'express'
fs = require 'fs'

app = express.createServer express.logger()

app.get '/', (request, response) ->
  fs.readFile 'index.html', (err, data) ->
    response.send data.toString()

port = process.env.PORT || 5000
app.listen port, () ->
  console.log "Listening on " + port

