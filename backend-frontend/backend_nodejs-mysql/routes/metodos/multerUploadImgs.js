const multer = require('multer')

//MANIUPULAÇÃO DO LOCAL DO ARQUIVO E NOME QUE O MESMO TERÁ
storage = multer.diskStorage({
    destination: function (req, file, cb) { //LOCAL
        cb(null, './uploads/');
    },
    filename: function (req, file, cb) { // NOME
        cb(null, new Date().toISOString().split(":") + '-' + file.originalname)
    }
})

//FILTRO DOS TIPOS ACEITOS DE EXTENSÕES DE ARQUIVO
const fileFilter = (req, file, cb) => {
    if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
        cb(null, true);
    } else {
        cb(null, false)
    }
}

//UPLOAD DO ARQUIVO
exports.upload = multer({
    storage: storage, //LOCAL PARA SALVAR E NOME
    fileFilter: fileFilter
    //FILTRO DE TIPO
})