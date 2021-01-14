const mysql = require('../mysql')

exports.getSubCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute('SELECT * FROM subcategoria')

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.getSubCategoriaEspecifica = async (req, res, next) => {
    try {
        const response = await mysql.execute('SELECT * FROM subcategoria WHERE idsubcategoria = ?',
            [req.params.id_subcategoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.postSubCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute(`INSERT INTO subcategoria 
                                        (titleSubCategoria, descriptionSubCategoria, idcategoria)
                                        VALUES (?,?,?)`,
            [req.body.titleSubCategoria, req.body.descriptionSubCategoria, req.body.idcategoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.patchSubCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute(`UPDATE subcategoria 
                                                 SET titleSubCategoria = ?,
                                                     descriptionSubCategoria = ?
                                               WHERE idsubcategoria = ?`,
            [req.body.titleSubCategoria, req.body.descriptionSubCategoria, req.params.id_subcategoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.deleteSubCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute('DELETE FROM subcategoria WHERE idsubcategoria = ?',
            [req.params.id_subcategoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({
            error: error
        })
    }
}