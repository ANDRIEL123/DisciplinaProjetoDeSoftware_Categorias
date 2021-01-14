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

function IncluirCategoria() {
    let [title, setTitle] = useState('')
    let [description, setDescription] = useState('')

    const addCategoria = async () => {
        if (title !== '') {
            const response = await api.post('/categorias', {
                titleCategoria: title,
                descriptionCategoria: description
            })
            if (response.status = 200) {
                let confirm = window.confirm('Categoria incluída com sucesso, deseja adicionar outra?')
                if (confirm) {
                    gerirRotas('/inserir')
                } else {
                    gerirRotas('/')
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
                <h2>Inserir Categoria</h2>
            </div>
            <br></br>
            <div className="corpo-inserir">
                <div className="titulo">
                    <TextField
                        style={{ width: "80vmin" }}
                        label="Título da Categoria"
                        type="text"
                        name="title"
                        value={title}
                        onChange={e => setTitle(e.target.value)}
                        required />
                </div>
                <br></br>
                <div className="descricao">
                    <TextField
                        style={{ width: "80vmin" }}
                        label="Description da Categoria"
                        type="text"
                        multiline
                        rows="5"
                        variant="outlined"
                        name="description"
                        value={description}
                        onChange={e => setDescription(e.target.value)} />
                </div>
                <br></br>
                <div className="button-operations">
                    <Button
                        style={{ marginRight: "5vmin" }}
                        variant="contained"
                        className="btn-incluir"
                        color="primary"
                        onClick={() => addCategoria()}
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

export default IncluirCategoria