import React, { useState, useEffect } from 'react'
import TextField from '@material-ui/core/TextField'
import Button from '@material-ui/core/Button'
import api from '../services/api'
import { useParams, Link } from 'react-router-dom'
import Logo from '../images/almoxarifado-clean.png'

import './inserirCategorias.css'

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

function EditarCategoria() {
    let { id_categoria } = useParams<ParamTypes>()
    let [title, setTitle] = useState('')
    let [description, setDescription] = useState('')
    let [categorias, setCategorias] = useState([])



    const loadCategorias = async () => {
        const response = await api.get(`/categorias/${id_categoria}`)
        setCategorias(response.data.response[0])
        setTitle(response.data.response[0].titleCategoria)
        setDescription(response.data.response[0].descriptionCategoria)
    }

    useEffect(() => {
        loadCategorias()
    }, [])

    const updateCategoria = async () => {
        if (title !== '') {
            const response = await api.patch(`/categorias/${id_categoria}`, {
                titleCategoria: title,
                descriptionCategoria: description
            })
            if (response.status === 200) {
                alert('Categoria atualizada com sucesso!')
                gerirRotas('/')
            } else {
                alert('Problema na atualização de categoria.')
            }
        }
    }

    return (
        <div className="inserir">
            <div className="header-app">
                <Link to="/">
                    <img src={Logo} alt="Logo" />
                </Link>
                <h2>Editar Categoria</h2>
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
                        onClick={() => updateCategoria()}
                        type="submit"
                    >Editar</Button>
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

export default EditarCategoria