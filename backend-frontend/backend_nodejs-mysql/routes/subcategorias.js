const express = require('express')
const router = express.Router();
const subCategoriasController = require('../controllers/subcategorias-controller')

//RETORNA TODAS CATEGORIAS

router.get('/', subCategoriasController.getSubCategorias)

//RETORNA UMA CATEGORIA

router.get('/:id_subcategoria', subCategoriasController.getSubCategoriaEspecifica)

//INSERE UMA CATEGORIA

router.post('/', subCategoriasController.postSubCategorias)

//ALTERA UMA CATEGORIA ESPECÍFICA
router.patch('/:id_subcategoria', subCategoriasController.patchSubCategorias)

//DELETA UMA CATEGORIA ESPECÍFICA
router.delete('/:id_subcategoria', subCategoriasController.deleteSubCategorias)

module.exports = router