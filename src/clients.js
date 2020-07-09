const express = require('express');
const mongoose = require('mongoose');
const router = express.Router();
const swaggerJsDoc = require("swagger-jsdoc");
const {User}=require('../models/schemas');
const swaggerUi = require("swagger-ui-express");

router.get('/',function (req,res){


});
router.get('/getAll',async function(req,res){
    const all= await User.find({},function(err, results) {});
    var count= all.length;
    console.log(count)
    /* res.send(count.toString); */
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
// use this function to login new users 
//
router.post('/login',function(req,res){
    console.log(req.body);
    console.log('logged the body')
    User.find({"userName":req.body.userName,"password":req.body.password}, function (err, doc) {
        if (err) return res.sendStatus(500, { error: err });
        if ( doc.length== 0) {
            const newUser =User(req.body); 
            newUser.save()
                .then(data => {
                    console.log('saved');
                    res.json(data);
        
                }).catch(err => {
                    res.json(err);
                }); 
        }else{
            return res.json(doc[0]);}
    });
    
});



module.exports = router;