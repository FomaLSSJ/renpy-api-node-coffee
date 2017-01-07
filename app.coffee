path = require 'path'
express = require 'express'
session = require 'express-session'
bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'

config = require './modules/config'
router = require './modules/router'

app = express()

app.use bodyParser.json()
app.use bodyParser.urlencoded
  extended: true
app.use cookieParser()
app.use session
  secret: config.SESSION.secret
  key: config.SESSION.key
  resave: config.SESSION.resave
  saveUninitialized: config.SESSION.saveUninitialized
  cookie: config.SESSION.config

app.use '/user', router.user

module.exports = app
