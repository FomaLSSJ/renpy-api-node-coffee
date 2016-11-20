module.exports =
  DEV:
    name: 'develop'
    host: '127.0.0.1'
    port: 3002

  SESSION:
    secret: 'john-woo'
    key: 'sid'
    resave: false
    saveUninitialized: true
    cookie:
      path: '/'
      httpOnly: true
      maxAge: null