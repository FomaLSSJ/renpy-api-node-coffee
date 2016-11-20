config = require '../modules/config'
cookie = require 'cookie'
cookieParser = require 'cookie-parser'

app = require '../app'

http = require 'http'
  .createServer app

http.listen process.env.PORT or config.DEV.port, process.env.IP or config.DEV.host, ->
  addr = http.address()
  console.log "Server listening at #{addr.address}:#{addr.port}"