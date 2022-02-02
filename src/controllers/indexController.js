const fs = require('fs');
const path = require('path');

// ESTO SERIA EL GESTOR DEL MODELO
const jsonDB = require('../model/menuDatabase');

// Maneja todos los métodos para PRODUCTO, que lo pasa como parámetro
const productModel = jsonDB('indexProducts');


//**Rutas de acceso disponnible para el usuario  */
const controllerIndex = {
    home: (req,res) =>{

        const homeProducts = productModel.getIsSpecial();

        res.render('./menu/index', {homeProducts});
    },
    menu: (req,res) =>{

        const categorias = productModel.all();

        res.render('./menu/menu', {categorias} )
    }
} 

module.exports =  controllerIndex;