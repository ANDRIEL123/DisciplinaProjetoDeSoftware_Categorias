import React from 'react'
import App from './App'
import IncluirCategoria from './gestaoCategorias/insereCategoria'
import EditarCategoria from './gestaoCategorias/editaCategoria'
import Inserirsubcategoria from './gestaoSubCategorias/inserirSubCategoria'
import SubCategoriasMain from './gestaoSubCategorias/mainsubcategoria'
import EditarSubCategoria from './gestaoSubCategorias/editsubcategoria'

import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link
} from "react-router-dom";


export default function mainRoutes() {
    return (
        <div>
            <Router>
                <Switch>
                    <Route exact path="/">
                        <App />
                    </Route>
                    <Route path="/subcategorias/:id_categoria">
                        <SubCategoriasMain />
                    </Route>
                    <Route path="/inserir">
                        <IncluirCategoria />
                    </Route>
                    <Route path="/inserirsubcategoria/:id_categoria">
                        <Inserirsubcategoria />
                    </Route>
                    <Route path="/editarsubcategoria/:id_subcategoria">
                        <EditarSubCategoria />
                    </Route>
                    <Route path="/editar/:id_categoria">
                        <EditarCategoria />
                    </Route>
                </Switch>
            </Router>
        </div>
    )
}