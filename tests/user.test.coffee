chai = require 'chai'
chaiHttp = require 'chai-http'
app = require '../app'
should = chai.should()

chai.use chaiHttp

describe 'Users', ->
  user = null
  name = 'default'

  it 'Get user', (done) ->
    chai.request app
      .get "/user/#{name}"
      .end (err, res) ->
        user = res.body
        res.should.have.status 200
        user.should.to.be.a 'object'
        user.status.should.to.be.a true
        user.messages.should.to.be.a 'array'
    done()

  it 'Check user name', (done) ->
    [message] = user.messages
    message.should.to.have.string name
    done()
