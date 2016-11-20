config = require './modules/config'
path = require 'path'
express = require 'express'
session = require 'express-session'
bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'

app = express()

app.use bodyParser.urlencoded
  extended: false
app.use cookieParser()
app.use session
  secret: config.SESSION.secret
  key: config.SESSION.key
  resave: config.SESSION.resave
  saveUninitialized: config.SESSION.saveUninitialized
  cookie: config.SESSION.config

module.exports = app