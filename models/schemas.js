const mongoose=require('mongoose');

const mongooseUniqueValidator = require('mongoose-unique-validator');
//var  Topping= new mongoose.Schema({ name: String });
const pizza=mongoose.Schema({
    Name:{
        type:String,
        required:true
    },
    Price:{
        type:String,
        
    },
    toppings:[String],
        
        
    
});
const orderedItem= new mongoose.Schema({
    item:{
        type:pizza
    },
    quantity:{
        type:Number,
        required: true
    }
});
const order= new mongoose.Schema({
    itemslist:{
        type:[orderedItem]
    },
    User:{
        type:String,
        required:true
    },
    date:{
        type:String,
        required:true
    }
});
const user= new mongoose.Schema({
    userName:{
        type:String,
        required:true,
        unique:true
    },
    password:{
        type:String,
        required:true
    },
    address:{
        Type:String
    }

});
user.plugin(mongooseUniqueValidator);
const Order = mongoose.model('Order', order);
const Pizza = mongoose.model('Pizza', pizza);
const User = mongoose.model('User',user);
module.exports = {
    Order: Order,
    Pizza: Pizza,
    User: User
}
