const express = require('express');
const router = express.Router();
const multerUpload = require('../middlewares/multerProduct');
const productController = require('../controllers/productController')


// -----------EN PROCESO------------------------
router.get('/shopping-cart', productController.shoppingCart);

// -----------EN PROCESO------------------------

// -----------TERMINADOS------------------------

//-- Listado de productos
router.get('/products', productController.productos)

// ----RUTA DE LAS CATEGORIAS DE LOS PRODUCTOS---
router.get('/menu/:categoria', productController.category);

//-- Detalle de un producto particular
router.get('/menu/:categoria/:id', productController.productDetail);

router.get('/product/:categoria/:id', productController.productDetail);

// ----RUTA DE LA BARRA DEL BUSCADOR---- 
router.get('/search', productController.search);

//  --------VISTA DEL FORMULARIO DE CREACION - ADMIN--------
router.get('/viewCreate', productController.viewCreate)

// Acción de creación (a donde se envía el formulario)-check
router.post('/productos/createProduct', multerUpload.single('imgProductos'), productController.createProduct)

//  --------VISTA DEL FORMULARIO DE EDICION- ADMIN--------
router.get('/productEdition/:id', productController.productEdition);

//  --------EDICION DE UN PRODUCTO--------
router.put('/productEdition/:id', multerUpload.single('imgProductos'), productController.edit);

//  --------ELIMINACION DE UN PRODUCTO--------
router.delete('/productDelete/:id', productController.delete);
// -----------TERMINADOS------------------------


module.exports = router;