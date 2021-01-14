import React, { useState, useEffect } from 'react';
import Button from '@material-ui/core/Button';
import DeleteIcon from '@material-ui/icons/Delete';
import ArrowDownwardIcon from '@material-ui/icons/ArrowDownward';
import TextField from '@material-ui/core/TextField';
import { Link } from 'react-router-dom'
import api from './services/api'
import './App.css';
import Logo from './images/almoxarifado-clean.png'

interface Categorias {
  idcategorias: BigInteger,
  titleCategoria: string,
  descriptionCategoria: string
}

function App() {

  const [openSubCategorias, setOpenSubCategorias] = useState(false)
  let [categorias, setCategorias] = useState<Categorias[]>([])
  let [categoriasAux, setCategoriasAux] = useState<Categorias[]>([])
  let [query, setQuery] = useState('')

  const loadCategorias = async () => {
    const response = await api.get('/categorias')
    setCategorias(response.data.response)
    setCategoriasAux(response.data.response)
  }

  useEffect(() => {
    loadCategorias()
  }, [])

  const deleteCategoria = async (id: BigInteger) => {
    await api.delete(`/categorias/${id}`)
    loadCategorias()
  }

  const filterCategorias = () => {
    var filteredArray = categoriasAux.filter(cat => {
      return cat.titleCategoria.toLowerCase().indexOf(query.toLowerCase()) >= 0;
    });
    setCategorias(filteredArray)
  };

  const remove = (id: BigInteger) => {
    let confirm = window.confirm('Deseja realmente remover a categoria?')
    if (confirm) {
      deleteCategoria(id)
    }
  }
  /*
    const renderSubCategorias = (index) => {
      if (openSubCategorias) {
        return (
          <div>
            {categorias.map((cat: Categorias) =>
              <tr className="dados">
                <button><ArrowDownwardIcon fontSize="inherit" /></button>
                <th className="identificador_coluna">{cat.titleCategoria}</th>
                <Button variant="contained" color="primary">EDITAR</Button>
                <Button variant="contained" color="secondary"
                  startIcon={<DeleteIcon />}>REMOVER</Button>
              </tr>
            )}
          </div>
        )
      }
    }
  */

  return (
    <div className="App">
      <div className="header-app">
        <Link to="/">
          <img src={Logo} alt="Logo" />
        </Link>
        <h2>Gestão de Categorias</h2>
      </div>

      <div className="corpo-inserir">
        <Link to="/inserir">
          <Button variant="contained" color="primary">Inserir categoria</Button>
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
          {categorias.map((cat: Categorias, index) =>
            <tr className="dados">

              <Link to={`/subcategorias/${cat.idcategorias}`}>
                <div className="cadastra-subcategoria">
                  <span data-tooltip="Subcategorias">
                    <ArrowDownwardIcon fontSize="inherit" />
                  </span>
                </div>
              </Link>

              <th className="identificador_coluna">{cat.titleCategoria}</th>
              <Link to={`/editar/${cat.idcategorias}`}>
                <Button variant="contained" color="primary">EDITAR</Button>
              </Link>
              <Button variant="contained" color="secondary"
                onClick={() => remove(cat.idcategorias)}
              >REMOVER</Button>
            </tr>
          )}

        </table>
      </div>
    </div>
  );
}

export default App;
