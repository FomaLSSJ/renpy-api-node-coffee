path = require 'path'
express = require 'express'
session = require 'express-session'
bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'

config = require './modules/config'
user = require './modules/user'

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

app.use '/user', user.routes

module.exports = app
