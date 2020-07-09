const express = require('express');
const app = express();
const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');
const fileUpload = require('express-fileupload');
const clients = require('./src/clients');
const pizza = require('./src/Pizza');
var cors = require('cors')
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
const bodyParser = require('body-parser');
app.use(cors());
app.options('*', cors());
app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
    });
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use('/pizza',pizza);
app.use('/clients',clients);
app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

app.use(fileUpload({
    createParentPath: true
}));
app.use(express.static('./uploads'));
mongoose.connect('mongodb+srv://azer:azer1995@shurima-jjdds.mongodb.net/pizza?retryWrites=true&w=majority', err => {
    if (err) {
        console.log(`Not connected to db ${err}`)
    } else {
        console.log('Successfully connected to db')
    }
});
app.get('/',function(req,res){
    res.send('hhhhhhey ');
});
app.post('/upload', function(req, res) {
    let sampleFile;
    let uploadPath;
    
    if (!req.files || Object.keys(req.files).length === 0) {
      res.status(400).send('No files were uploaded.');
      return;
    }
  
    console.log('req.files >>>', req.files); 
  
    sampleFile = req.files.sampleFile;
  
    uploadPath = __dirname + '/uploads/' + sampleFile.name;
  
    sampleFile.mv(uploadPath, function(err) {
      if (err) {
        return res.status(500).send(err);
      }
  
      res.send('File uploaded to ' + uploadPath);
    });
  });
app.listen(1234);


module.exports = app;