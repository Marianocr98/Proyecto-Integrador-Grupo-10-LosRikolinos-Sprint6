const fs = require('fs');
const path = require('path');
const db = require('../database/models');
const sequelize = db.sequelize;

// ESTO SERIA EL GESTOR DEL MODELO

// const jsonDB = require('../model/jsonDatabase');

// Maneja todos los métodos para PRODUCTO, que lo pasa como parámetro
// const productModel = jsonDB('products');


const productController = {

    productos: (req,res) => {

        //const productos = productModel.all();
        db.Product.findAll()
            .then(productos => {
                res.render('./products/productos' ,{productos})
            })
                    .catch(error => res.send(error))

    },

    viewCreate: (req,res)=>{
        db.Product.findAll()
            .then(listProduct => {
                db.Category.findAll()
                .then( categories => {
                    res.render('./admin/admin', {listProduct, categories})
                })
                .catch(error => res.send(error))
            })
            .catch(error => res.send(error));
    },

    createProduct:(req,res)=>{
        db.Product.create({
        title: req.body.title,
        image: req.file.filename,
        description: req.body.description,
        price: Number(req.body.price),
        section: "productos",
        category: req.body.category
        })
        .then(()=>{
            res.redirect('/viewCreate')
        })
        .catch(error => res.send(error))
        //Aplicar luego un res.render -tarea para mariano
        // productModel.create(value);
    },


    productEdition : (req,res)=>{

        db.Product.findByPk(req.params.id)
        .then( producto => {
            db.Category.findAll()
                .then( categories => {
                    res.render('./admin/productEdition', {producto, categories})
                })
                .catch(error => res.send(error))
        })
        .catch(error => res.send(error))
    },

    edit : (req,res)=>{
            let product = db.Product.findByPk(req.params.id);
            db.Product.update({
            title: req.body.title,
            description: req.body.description,
            price: req.body.price,
            category: req.body.category,
            image: req.file != null ? req.file.filename : product.image
        },
        {
            where: {id:req.params.id}
        })
        .then( () => {
            res.redirect('/viewCreate');
        })
    },

    delete : (req,res)=>{
        // productModel.delete(req.params.id);
        Product
        .destroy({where: {id: req.params.id}, force: true}) // force: true es para asegurar que se ejecute la acción
        .then(()=>{
            return res.redirect('/viewCreate')})
        .catch(error => res.send(error)) 
    },
    category: (req, res) => {
        // const productos = productModel.productsCategory(req.params.categoria);
        // const detail = productModel.find(req.params.id);
        db.Product.findAll({
            where: {
                category_id: req.params.categoria
            }
        })
        .then(productos => {
            res.render('./products/categories', {productos})
        })
        .catch(error => res.send(error))
            
    },
    productDetail: (req, res) => {
        db.Product.findByPk(req.params.id)
        .then( detail => {
            res.render('./products/productDetail', {detail});
        })
    },
    
/* 
    search: (req, res) => {

        let busqueda = req.query.search.toLowerCase();
        // console.log("Estoy buscando:" + busqueda);

        let productos = productModel.readFile();

        let filtrados = productos.filter(e => e.title.toLowerCase().includes(busqueda) || e.category.toLowerCase().includes(busqueda));

        res.render('./menu/comidaReq', { filtrados: filtrados})
    },
    
    shoppingCart : (req,res)=>{
        res.render('./products/shopping-cart');
    }, 
 */
}


module.exports = productController;