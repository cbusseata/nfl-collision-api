const serverless = require('serverless-http');
const express = require('express');
const app = express();

app.get('/', function (request, response) {
    response.send('Hello, world!');
});

module.exports.handler = serverless(app);
