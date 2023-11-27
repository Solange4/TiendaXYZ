import React from 'react';
import GetList from './GetProducts.js';
import PostProducts from './PostProducts.js';
export default() => {
    return <div className = "container"> 
        <h1> Ingresar Producto </h1>
        <PostProducts/>
        <h1> Producto </h1>
        <GetList/>
        <hr/>
    </div>
};