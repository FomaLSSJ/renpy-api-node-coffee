router = require 'express'
  .Router()

router.get '/name/:name', (req, res, next) ->
  name = req.params.name
  
  res.send
    status: true
    messages: [
      name: 'Anotator'
      say: "Hi, my name #{name}!"
    ,
      name: 'Anotator'
      say: 'Nice to meet you.'
    ]

router.post '/auth', (req, res, next) ->
  console.log req.body
  res.send
    status: true
    hentai: false
    messages: [
      name: 'Anotator'
      say: "Hi, my name #{if req.body.name then req.body.name else 'NAME'}!"
    ]

module.exports = router