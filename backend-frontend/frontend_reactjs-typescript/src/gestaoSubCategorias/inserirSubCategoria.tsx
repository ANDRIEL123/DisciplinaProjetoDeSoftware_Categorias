import React, { useState } from 'react'
import TextField from '@material-ui/core/TextField'
import Button from '@material-ui/core/Button'
import api from '../services/api'
import { useParams, Link } from 'react-router-dom'
import './inserirCategorias.css'
import Logo from '../images/almoxarifado-clean.png'


const pegaUrlAtual = () => {
    const url = window.location.href.split(window.location.pathname)
    return url[0]
}

const gerirRotas = (rota) => {
    window.location.href = pegaUrlAtual() + rota
}

interface ParamTypes {
    id_categoria: string
}

function IncluirSubCategoria() {
    let [titleSubCategoria, setTitleSubCategoria] = useState('')
    let [descriptionSubCategoria, setDescriptionSubCategoria] = useState('')
    let { id_categoria } = useParams<ParamTypes>()

    const addSubCategoria = async () => {
        if (titleSubCategoria !== '') {
            const response = await api.post('/subcategorias', {
                titleSubCategoria: titleSubCategoria,
                descriptionSubCategoria: descriptionSubCategoria,
                idcategoria: id_categoria
            })
            if (response.status = 200) {
                let confirm = window.confirm('Subcategoria incluída com sucesso, deseja adicionar outra?')
                if (confirm) {
                    gerirRotas(`/inserirsubcategoria/${id_categoria}`)
                } else {
                    gerirRotas(`/subcategorias/${id_categoria}`)
                }
            } else {
                alert('Problema na inclusão de categoria.')
            }
        }
    }

    return (
        <div className="inserir">
            <div className="header-app">
                <Link to="/">
                    <img src={Logo} alt="Logo" />
                </Link>
                <h2>Inserir Subcategoria</h2>
            </div>
            <br></br>
            <div className="corpo-inserir">
                <div className="titulo">
                    <TextField
                        style={{ width: "80vmin" }}
                        label="Título da SubCategoria"
                        type="text"
                        name="title"
                        value={titleSubCategoria}
                        onChange={e => setTitleSubCategoria(e.target.value)}
                        required />
                </div>
                <br></br>
                <div className="descricao">
                    <TextField
                        style={{ width: "80vmin" }}
                        label="Description da SubCategoria"
                        type="text"
                        multiline
                        rows="5"
                        variant="outlined"
                        name="description"
                        value={descriptionSubCategoria}
                        onChange={e => setDescriptionSubCategoria(e.target.value)} />
                </div>
                <br></br>
                <div className="categoria-pai">
                    <TextField
                        style={{ width: "80vmin" }}
                        label="Categoria pai"
                        type="text"
                        name="title"

                        value={id_categoria}
                        disabled
                        required />
                </div>
                <br></br>
                <div className="button-operations">
                    <Button
                        style={{ marginRight: "5vmin" }}
                        variant="contained"
                        className="btn-incluir"
                        color="primary"
                        onClick={() => addSubCategoria()}
                        type="submit"
                    >Incluir</Button>
                    <Link to="/">
                        <Button
                            style={{ marginLeft: "5vmin" }}
                            variant="contained"
                            className="btn-cancel"
                            color="secondary"
                        >Cancelar</Button>
                    </Link>
                </div>
            </div>

        </div>
    )
}

export default IncluirSubCategoria