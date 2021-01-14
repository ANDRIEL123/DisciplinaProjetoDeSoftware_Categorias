const express = require('express')
const router = express.Router();
const categoriasController = require('../controllers/categorias-controller')

//RETORNA TODAS CATEGORIAS

router.get('/', categoriasController.getCategorias)

//RETORNA UMA CATEGORIA

router.get('/:id_categoria', categoriasController.getCategoriaEspecifica)

//INSERE UMA CATEGORIA

router.post('/', categoriasController.postCategorias)

//ALTERA UMA CATEGORIA ESPECÍFICA
router.patch('/:id_categoria', categoriasController.patchCategorias)

//DELETA UMA CATEGORIA ESPECÍFICA
router.delete('/:id_categoria', categoriasController.deleteCategorias)

module.exports = router