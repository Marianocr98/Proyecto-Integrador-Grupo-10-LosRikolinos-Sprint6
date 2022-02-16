let db = require("../database/models");

const controllerIndex = {
    home: (req,res) =>{
        db.Category.findAll({
            where: {
                isSpecial: 1
            }
        })
        .then(homeProducts => {
            res.render('./menu/index', {homeProducts});
        })
    },

    menu: (req,res) =>{
        db.Category.findAll()
        .then(categorias => {
            res.render('./menu/menu', {categorias} )
        })
    }
} 

module.exports =  controllerIndex;