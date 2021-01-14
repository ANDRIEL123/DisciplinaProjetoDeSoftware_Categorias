import React, { useState, useEffect } from 'react';
import Button from '@material-ui/core/Button';
import DeleteIcon from '@material-ui/icons/Delete';
import ArrowDownwardIcon from '@material-ui/icons/ArrowDownward';
import TextField from '@material-ui/core/TextField';
import { Link, useParams } from 'react-router-dom'
import api from '../services/api'
import Logo from '../images/almoxarifado-clean.png'
import '../App.css';

interface SubCategorias {
    idsubcategoria: BigInteger,
    titleSubCategoria: string,
    descriptionSubCategoria: string,
    idcategoria: BigInteger
}

interface ParamTypes {
    id_categoria: string
}

function SubCategoriasMain() {

    let [subCategorias, setSubCategorias] = useState<SubCategorias[]>([])
    let [subCategoriasAux, setSubCategoriasAux] = useState<SubCategorias[]>([])
    let [categoriaAux, setCategoriaAux] = useState('')
    let [query, setQuery] = useState('')
    let { id_categoria } = useParams<ParamTypes>()

    const loadSubCategorias = async () => {
        const response = await api.get(`/subcategorias`)
        setSubCategorias(response.data.response)
        setSubCategoriasAux(response.data.response)

    }

    const loadCategoria = async () => {
        const response = await api.get(`/categorias/${id_categoria}`)
        setCategoriaAux(response.data.response[0].titleCategoria)
    }

    useEffect(() => {
        loadSubCategorias()
        loadCategoria()
    }, [])

    const deleteCategoria = async (id: BigInteger) => {
        await api.delete(`/subcategorias/${id}`)
        loadSubCategorias()
    }

    const filterCategorias = () => {
        var filteredArray = subCategoriasAux.filter(cat => {
            return cat.titleSubCategoria.toLowerCase().indexOf(query.toLowerCase()) >= 0;
        });
        setSubCategorias(filteredArray)
    };

    const remove = (id: BigInteger) => {
        let confirm = window.confirm('Deseja realmente remover a subcategoria?')
        if (confirm) {
            deleteCategoria(id)
        }
    }


    return (
        <div className="App">
            <div className="header-app">
                <Link to="/">
                    <img src={Logo} alt="Logo" />
                </Link>
                <h2>{`Gestão de Subcategoria`}</h2>
                <h2><u>{`Categoria ${categoriaAux}`}</u></h2>
            </div>

            <div className="corpo-inserir">
                <Link to={`/inserirsubcategoria/${id_categoria}`}>
                    <Button variant="contained" color="primary">Inserir Subcategoria</Button>
                </Link>
            </div>
            <div className="corpo-pesquisa">
                <TextField id="standard-basic" label="Busque a categoria"
                    onKeyDown={(event) => { filterCategorias() }}
                    type="text"
                    onChange={e => setQuery(e.target.value)} />
            </div>

            <div className="corpo-listagem">
                <table>
                    {subCategorias.map((cat: SubCategorias, index) =>
                        <tr className="dados">
                            <th className="identificador_coluna">{cat.titleSubCategoria}</th>
                            <Link to={`/editarsubcategoria/${cat.idsubcategoria}`}>
                                <Button variant="contained" color="primary">EDITAR</Button>
                            </Link>
                            <Button variant="contained" color="secondary"
                                onClick={() => remove(cat.idsubcategoria)}
                            >REMOVER</Button>
                        </tr>
                    )}

                </table>
            </div>
        </div >
    );
}

export default SubCategoriasMain;
