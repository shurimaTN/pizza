const mongoose=require('mongoose');
var uniqueValidator = require('mongoose-unique-validator');
var  Topping= new mongoose.Schema({ name: String });
const Pizza=mongoose.Schema({
    Name:{
        type:String,
        required:true
    },
    Price:{
        type:String,
        
    },
    toppings:{
        type:[Topping],
        
        
    }
});
const orderedItem= new mongoose.Schema({
    item:{
        type:pizza
    },
    preferences:[String]
});
const order= new mongoose.Schema({
    itemslist:{
        type:[orderedItem]
    }
});
DLschema.plugin(uniqueValidator);
module.exports=mongoose.model('Digitallinks',DLschema);