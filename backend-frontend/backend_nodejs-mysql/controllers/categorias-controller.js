const mysql = require('../mysql')

exports.getCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute('SELECT * FROM categorias')

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.getCategoriaEspecifica = async (req, res, next) => {
    try {
        const response = await mysql.execute('SELECT * FROM categorias WHERE idcategorias = ?',
            [req.params.id_categoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.postCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute(`INSERT INTO categorias 
                                        (titleCategoria, descriptionCategoria)
                                        VALUES (?,?)`,
            [req.body.titleCategoria, req.body.descriptionCategoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.patchCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute(`UPDATE categorias 
                                        SET titleCategoria = ?,
                                            descriptionCategoria = ?
                                      WHERE idcategorias = ?`,
            [req.body.titleCategoria, req.body.descriptionCategoria, req.params.id_categoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({ error: error })
    }
}

exports.deleteCategorias = async (req, res, next) => {
    try {
        const response = await mysql.execute('DELETE FROM categorias WHERE idcategorias = ?',
            [req.params.id_categoria])

        return res.status(200).send({
            response: response
        })
    } catch (error) {
        return res.status(500).send({
            error: error
        })
    }
}