const express = require('express');
const mongoose = require('mongoose');
const router = express.Router();
const swaggerJsDoc = require("swagger-jsdoc");
const {User}=require('../models/schemas');
const swaggerUi = require("swagger-ui-express");

router.get('/',function (req,res){


});
// use this method to sign new users
router.post('/new',function( req,res){
    const newUser =User(req.body); 
    newUser.save()
        .then(data => {
            console.log('saved');
            res.json(data);

        }).catch(err => {
            res.json(err);
        }); 

});
router.get('/login',function(req,res){
    User.find({"userName":req.body.userName,"password":req.body.password}, function (err, doc) {
        if (err) return res.sendStatus(500, { error: err });
        return res.send(doc);
    });
    
});



module.exports = router;