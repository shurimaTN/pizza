const express = require('express');
const app = express();
const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');
const mongoose = require('mongoose');
const swaggerOptions = {
    swaggerDefinition: {
        info: {
            title: "pizza app api ",
            description: " The backend for my pizza delivery app",

            contact: {
                name: "azer gorai"
            },
            servers: ["http://localhost:3003"]

        },
        
    },apis: ['./src/*.js']
};
const swaggerDocs = swaggerJsDoc(swaggerOptions);
const resolver = require('./src/api');
const verifier = require('./src/verifier');
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));
app.use('/Api', resolver);
app.use('/verifier', verifier);
mongoose.connect('mongodb://localhost:27017/resolver', err => {
    if (err) {
        console.log(`Not connected to db ${err}`)
    } else {
        console.log('Successfully connected to db')
    }
});
app.listen(3003);


module.exports = app;