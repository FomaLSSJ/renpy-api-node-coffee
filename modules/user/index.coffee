router = require 'express'
  .Router()

service =
  routes:
    router.get '/:name', (req, res, next) ->
      name = req.params.name
      
      res.send
        status: true
        messages: [
          "Hi, my name #{name}!"
          "Nice to meet you."
        ]

module.exports = service