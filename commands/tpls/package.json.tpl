{
  "name": "{{projectName}}",
  "version": "1.0.0",
  "description": "airapi service",
  "main": "index.js",
  "directories": {
    "test": "test"
  },
  "scripts": {
    "dev": "NODE_ENV=development nodemon --inspect src/server.js",
    "test": "NODE_ENV=test node_modules/mocha/bin/mocha $(find ./test -name *.test.js)",
    "cov": "nyc -r html npm test && open ./coverage/index.html"
  },
  "pre-commit": [
    "test"
  ],
  "keywords": [
    "airapi"
  ],
  "author": "VinliCheung",
  "license": "ISC",
  "dependencies": {
    "config": "^1.26.1",
    "graphql": "^0.10.5",
    "joi": "^10.6.0",
    "koa": "^2.3.0",
    "koa-bodyparser": "^3.2.0",
    "koa-router": "^7.2.1",
    "log4js": "^2.2.0",
    "mongoose": "^4.11.3",
    "mongoose-timestamp": "^0.6.0",
    "pm2": "^2.5.0"
  },
  "devDependencies": {
    "mocha": "^3.4.2",
    "nodemon": "^1.11.0",
    "nyc": "^11.0.3",
    "pre-commit": "^1.2.2"
  }
}
